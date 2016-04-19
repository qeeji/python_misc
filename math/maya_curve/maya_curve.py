import math
import sys
import json

from maya import cmds

class BaseAnim(object):

    M1 = [-1.0,3.0,-3.0,1.0]
    M2 = [3.0,-6.0,3.0,0.0]
    M3 = [-3.0,3.0,0.0,0.0]
    M4 = [1.0,0.0,0.0,0.0]

    #Matrix bases with pascal triangle degree 2
    MM1 =[1,-2,1]
    MM2 =[-2,2,0]
    MM3 =[1,0,0]

    @property
    def keys(self):
        raise NotImplementedError

    @property
    def key_count(self):
        raise NotImplementedError

    def get_frame_values(self, frame):
        raise NotImplementedError
        
    def get_frame_idx(self,frame):
        try:
            return self.keys.index(frame)
        except ValueError,e:
            return -1
    
    def get_tangent_points(self, frame):

        pair =self.get_frame_pair(frame) 
        idx = self.get_frame_idx(int(pair[0]))
        return self.data_file[idx]["points"] 

    def get_frame_pair(self,frame):
        """
        This function tries to find a couple of keys containig the wanted frame, so we can 
        perform piece wise evaluation of the curve
        @param: fram, float the frame we want to evaluate 
        @returns: None, if there is just one key
                  -1, if there is no key and the key falls before the start of the curve,
                  sys.maxint, if there is no key and the key falls after end of the curve,
                  (float,float) if the tuple is found
        """
        
        f = self.get_frame_idx(frame)
        keys = self.keys

        #if there is only one key we cannot have a pair
        if len(keys) ==1:
            return  

        if f!= -1:
            #it means we have a key on the given frame, so we either pick a the one before or after 
            #if they exists
            if(f < (len(keys)-1)):
                return (keys[f], keys[f+1]) 
            else:
                return (keys[f-1], keys[f]) 
        else:
            #it measn there is not a key holding it so we need to find the closest pair

            for idx,key in enumerate(keys): 
                #we found a valid pair
                if key>frame:
                    #if we found that the first key is already over it meanse there is no pair key 
                    if idx == 0:
                        return -1
                    return (keys[idx-1], keys[idx]) 
            
            #if we get here it means our keys is after the last keyframe so we cannot evaluate 
            return sys.maxint

    def evaluate_at_param(self,u,frame):
        """
        This function evaluates the curve at param, the frames defines which 
        piece-wise of the curve to get
        @param u: float, the parameter at which evaluate the curve, between 0-1
        @param frame: float, this frame will define which pair of keyframe will be used
                      to evaluate the curve, so the frame doesnt have to be exact, just
                      need to be in the range you wish to evaluate, like if you want to 
                      evlute in the range 5,10, any number satisying the property 5<x<10
                      will suffice.
        @return: 2D point along the anim curve, the x will be the frame , the y the value at 
                 that frame
        """
        t = [u**3, u**2,u,1.0]
        #t = [u]*4

        basis = [ self.__dot(t,self.M1),
                  self.__dot(t,self.M2),
                  self.__dot(t,self.M3),
                  self.__dot(t,self.M4)]
        #just to make the code a bit more readable
        p1,p2,p3,p4 = self.get_tangent_points(frame)

        finalX =   ((basis[0] * p1[0]) +
                    (basis[1] * p2[0]) +
                    (basis[2] * p3[0]) +
                    (basis[3] * p4[0]) )
        finalY =   ((basis[0] * p1[1]) +
                    (basis[1] * p2[1]) +
                    (basis[2] * p3[1]) +
                    (basis[3] * p4[1]) )

        return finalX, finalY

    def __dot (self,v1,v2):
        """
        This function performs a dot product
        @param v1: vector of floats
        @param v2: vector of floats
        @returns :float
        """
        return sum([a*b for a,b in zip(v1,v2)])
class AnimCurve(BaseAnim):

    def __init__(self, path):
        BaseAnim.__init__(self)
        current_file = open(path)
        self.data_file = json.load(current_file)
        current_file.close()
         
    @property
    def keys(self):
        return [k["start"] for k in self.data_file]  + [self.data_file[-1]["end"]]

    @property
    def key_count(self):
        return len(self.data_file ) +1 

    def get_frame_values(self, frame):
        
        idx = self.get_frame_idx(frame)
        if frame == -1:
            raise ValueError ("get_frame_value : frame {f} not found".format(f=frame))
        
        if idx == (self.key_count-1):
            return self.data_file[-1]["points"][-1]
        else:
            return self.data_file[idx]["points"][0]
        
    def evaluate_at_frame(self,frame):

        points = self.get_tangent_points(frame)
        frame = float(frame)
        minv= 0.0
        maxv= 1.0
        avg=   (maxv+minv)/2.0
        x ,y =evaluate(avg,points)

        counter =0
        delta = (x-frame)
        tollerance = 0.00001
        
        while(abs(delta)> tollerance):
            if delta > 0:
                maxv=   avg 
            else:
                minv=   avg 
            
            avg=   (maxv+minv)/2.0

            x ,y =evaluate(avg,points)
            delta = x-frame

            if counter >30:
                return y 

            counter +=1
        return frame,y 


class MayaAnimCurve(BaseAnim):
    #matrix bases with pascal triangle degree 3
    def __init__(self, node, attribute):
        BaseAnim.__init__(self)

        self.node = node 
        self.attribute = attribute 

    @property
    def keys(self):
        return cmds.keyframe(self.node, attribute= self.attribute, query=True,timeChange=True)

    @property
    def key_count(self):
        return cmds.keyframe(self.node, attribute= self.attribute, query=True,keyframeCount=True)

    @property
    def conversion_factor(self):
        """
        This function returns the conversion factor for the X tangents
        @returns: float
        """
        time = OpenMaya.MTime(1.0,OpenMaya.MTime.kSeconds)
        return time.asUnits(OpenMaya.MTime.uiUnit())
    
    def get_frame_values(self, frame):
        return cmds.keyframe(self.node,attribute=self.attribute, time=(frame,frame), 
                query=True, valueChange=True, timeChange=True) 

    def get_tangent_points(self, frame):
        """
        this function finds the piece-wise keyframwe of the curve and returns the 4 
        points needed to evaluate the curve
        @returns: list of 4 2D points.
        """


        ##this work on the assumption there is a keyframe at current time
        frames = self.get_frame_pair(frame) 
        if frames == sys.maxint or frames is None or frames == -1:
            raise ValueError("MayaAnimCurve: frame {f} falls outside the anim curve")

        frame1, frame2= frames
        f1Idx = self.get_frame_idx(frame1)
        f2Idx = self.get_frame_idx(frame2)

        #querying the tangents
        outx = cmds.keyTangent(self.node,attribute=self.attribute, q=1, ox=1)[f1Idx]
        outy = cmds.keyTangent(self.node,attribute=self.attribute, q=1, oy=1)[f1Idx]
        inx  = cmds.keyTangent(self.node,attribute=self.attribute, q=1, ix=1)[f2Idx]
        iny  = cmds.keyTangent(self.node,attribute=self.attribute, q=1, iy=1)[f2Idx]

        t2 = [outx,outy]
        t3 = [inx, iny]

        conversion_factor = self.conversion_factor
        t2[0]*=(conversion_factor)
        t3[0]*=(conversion_factor)

        values1 =cmds.keyframe(self.node,attribute=self.attribute, time=(frame1,frame1), 
                query=True, valueChange=True, timeChange=True); 
        values2 =cmds.keyframe( self.node,attribute=self.attribute, time=(frame2,frame2), 
                query=True, valueChange=True, timeChange=True); 

        p1 =[values1[0],values1[1]]
        p4 =[values2[0],values2[1]]

        #we need to computethe tangent mulitplier.
        #the multiplier is reltive to the tangent of the angle
        #the final multiplier has the form  1/3 * y/x , where y and x are the 
        #componetns of the tangent vector
        #TODO check for divison by zero?
        delta = frame2-frame1

        out_mult = abs((1.0/3.0)*delta * t2[1]/t2[0])
        in_mult = abs((1.0/3.0)*delta * t3[1]/t3[0])

        p2 = [(t2[0]*out_mult) + p1[0],
              (t2[1]*out_mult) + p1[1]]

        p3 = [(-t3[0]*in_mult) + p4[0],
              (-t3[1]*in_mult) + p4[1]]

        return [p1,p2,p3,p4]


    def  evaluate_at_param2(self,u,frame):
        """
        This function evaluates the curve by using the polinomial approach rather than the
        matrix approach, should yield the same value as evaluate_at_param2.
        @param u: float, the parameter at which evaluate the curve, between 0-1
        @param frame: float, this frame will define which pair of keyframe will be used
                      to evaluate the curve, so the frame doesnt have to be exact, just
                      need to be in the range you wish to evaluate, like if you want to 
                      evlute in the range 5,10, any number satisying the property 5<x<10
                      will suffice.
        @return: 2D point along the anim curve, the x will be the frame , the y the value at 
                 that frame
        """
        
        w = self.get_tangent_points(frame)  
        u2 = u * u
        u3 = u2 * u
        mu = 1-u
        mu2 = mu * mu
        mu3 = mu2 * mu
        return w[0][0]*mu3 + 3*w[1][0]*mu2*u + 3*w[2][0]*mu*u2 + w[3][0]*u3,\
              w[0][1]*mu3 + 3*w[1][1]*mu2*u + 3*w[2][1]*mu*u2 + w[3][1]*u3

    def evaluate_at_frame(self,frame):

        points = self.get_tangent_points(frame)
        frame = float(frame)
        minv= 0.0
        maxv= 1.0
        avg=   (maxv+minv)/2.0
        x ,y =evaluate(avg,points)

        counter =0
        delta = (x-frame)
        tollerance = 0.00001
        
        while(abs(delta)> tollerance):
            if delta > 0:
                maxv=   avg 
            else:
                minv=   avg 
            
            avg=   (maxv+minv)/2.0

            x ,y =evaluate(avg,points)
            delta = x-frame

            if counter >30:
                return y 

            counter +=1
        return frame,y 

    def evaluate_derivative(self,u, frame):
        """
        This function evaluates the derivative at the given parameter for the wanted
        interval. It uses the matrix approach.
        @param u: float, the parameter at which evaluate the derivative, between 0-1.
        @param frame: float, this frame will define which pair of keyframe will be used
                      to evaluate the curve, so the frame doesnt have to be exact, just
                      need to be in the range you wish to evaluate, like if you want to 
                      evlute in the range 5,10, any number satisying the property 5<x<10
                      will suffice.
        @return: 2D point along the anim curve, the x will be the frame , the y the value at 
                 that frame
        """
        
        t = [ u**2,u,1.0]
        
        p1,p2,p3,p4 = self.get_tangent_points(frame);
        pp1 = [p2[0]-p1[0],p2[1]-p1[1]]
        pp2 = [p3[0]-p2[0],p3[1]-p2[1]]
        pp3 = [p4[0]-p3[0],p4[1]-p3[1]]

        basis = [ self.__dot(t,self.MM1),
                  self.__dot(t,self.MM2),
                  self.__dot(t,self.MM3)]

        finalX =  ((basis[0] * pp1[0]) +
                    (basis[1] * pp2[0]) +
                    (basis[2] * pp3[0]) )
        finalY =  ((basis[0] * pp1[1]) +
                    (basis[1] * pp2[1]) +
                    (basis[2] * pp3[1]) )
        return finalX, finalY

    def evaluate_derivative2(self,u, frame):
        """
        This is an alternate way to evaluate the derivative, in which we use the 
        evaluation of the polynomial we got by directly deriving the bezier degree 3 formula.
        This method should yield the same result as evaluate_derivative()
        @param u: float, the parameter at which evaluate the derivative, between 0-1.
        @param frame: float, this frame will define which pair of keyframe will be used
                      to evaluate the curve, so the frame doesnt have to be exact, just
                      need to be in the range you wish to evaluate, like if you want to 
                      evlute in the range 5,10, any number satisying the property 5<x<10
                      will suffice.
        @return: 2D point along the anim curve, the x will be the frame , the y the value at 
                 that frame
        """
        t = [ u**2,u,1.0]
        
        p1,p2,p3,p4 = self.get_tangent_points(frame);
        pp1 = [p2[0]-p1[0],p2[1]-p1[1]]
        pp2 = [p3[0]-p2[0],p3[1]-p2[1]]
        pp3 = [p4[0]-p3[0],p4[1]-p3[1]]
        
        finalX =1.0*pp1[0]*((1.0-u)**2) + 2*pp2[0]*(1-u)*u + 2*pp3[0]*(u**2)
        finalY =1.0*pp1[1]*((1.0-u)**2) + 2*pp2[1]*(1-u)*u + 1*pp3[1]*(u**2)

        return finalX, finalY


    def serialize(self, path):
        
        #to serialize we are going to save single keys, for each key xy coords and tangents 
        data = [] 
        keys = self.keys
    
        size = len(keys)
        for idx, key in enumerate(keys[:-1]):
            piece_data = {}
            start = key
            end = keys[idx+1]
            pts = self.get_tangent_points((start + end) /2)    
            piece_data["points"] = pts
            piece_data["start"] = start
            piece_data["end"] =end 
            data.append(piece_data)

        to_be_saved = json.dumps(data, sort_keys=True, \
                                    ensure_ascii=True, indent=2)
        current_file = open(path, 'w')
        current_file.write(to_be_saved)
        current_file.close()

