from maya import cmds

import math

from maya.api import OpenMaya
from maya.api import OpenMayaAnim


###############################################
#PART 1 
###############################################
obj = "locator1"
attr = "translateY"

#lets give it a try
outx = cmds.keyTangent(obj,attribute=attr, q=1, ox=1)[1]
outy  =cmds.keyTangent(obj,attribute=attr, q=1, oy=1)[1]
inx = cmds.keyTangent(obj,attribute=attr, q=1, ix=1) [1]
iny  =cmds.keyTangent(obj,attribute=attr, q=1, iy=1) [1]

#set them back in
cmds.keyTangent(obj,attribute=attr, time=(3,3), iy=iny) 
cmds.keyTangent(obj,attribute=attr, time=(3,3), ix=inx) 
cmds.keyTangent(obj,attribute=attr, time=(3,3), oy=outy) 
cmds.keyTangent(obj,attribute=attr, time=(3,3), ox=outx) 


#cmds.keyTangent(obj,attribute=attr, time=(3,3), oy=tanV[1]) 
#cool let s now try to compute the tangents ourself!
#using approximation
#utils functions
def get_MObject( object_name):
    '''
    @brief from string to MObject
    This function let you get an MObject from a string representing the object name
    @param object_name:  string or string[], the name of the object you want to work on  
    @returns: MObject or MObject[], based on whether the input was a list or not
    '''
    
    if isinstance(object_name, list)==True:
        oNodeList=[]
        for o in object_name:
            selectionList = OpenMaya.MSelectionList()
            selectionList.add(o)
            oNode = OpenMaya.MObject()
            selectionList.getDependNode(0, oNode)
            oNodeList.append(oNode)
        return oNodeList
    else:
        selectionList = OpenMaya.MSelectionList()
        selectionList.add(object_name)
        return selectionList.getDependNode(0)

def __get_anim_crv(obj,attr):
    node_obj = get_MObject(obj)
    dep_data = OpenMaya.MFnDependencyNode(node_obj)
    
    #listing the plug connection
    plug = dep_data.findPlug(attr,0)
    nodes = plug.connectedTo(True, False)
    if not nodes:
        return    
    #if we have a connection we grab the first one and check if it is 
    #and animation curve
    node = nodes[0].node()
    if (node.hasFn(OpenMaya.MFn.kAnimCurve)):
        return  node


node =  __get_anim_crv(obj,attr)
anim =OpenMayaAnim.MFnAnimCurve(node)

x1 = 3.0
x2 = 3.002
t = OpenMaya.MTime(x1)
t2 = OpenMaya.MTime(x2)
y1 = anim.evaluate(t)
y2 = anim.evaluate(t2)
#so we have a vector, namely v1= (x,y) , v2 = (x2,y2)
# we can extract the tangent vector by doing tanV = v2 -v1

tanV = [x2-x1, y2-y1]

#lets try to set it to maya
#cmds.keyTangent(obj,attribute=attr, time=(3,3), ox=tanV[0]) 
#cmds.keyTangent(obj,attribute=attr, time=(3,3), oy=tanV[1]) 

#no luck tangent is wrong lets try to extract the angle and set it?
angle = math.atan(tanV[1]/(tanV[0]*2))

angleDeg = angle *180.0 / math.pi
print angle, angleDeg

maya_angle = cmds.keyTangent(obj,attribute=attr,q=1, time=(3,3), outAngle=1) 
print "maya angle ", maya_angle, "angle",angleDeg
#set the angle
#cmds.keyTangent(obj,attribute=attr, time=(3,3), outAngle=angleDeg) 

#the angle works, is not surper precise but works, so why my tangents don't

#found in a sample code
time = OpenMaya.MTime(1.0,OpenMaya.MTime.kSeconds)
conversionFactor= time.asUnits(OpenMaya.MTime.uiUnit())

tanV[0]= (tanV[0]/conversionFactor)*2

#not needed but usefull to compare with maya
length  = math.sqrt(tanV[0]**2 + tanV[1]**2)
tanV[0]/=length
tanV[1]/=length

print "maya tans",outx,outy, "tans", tanV

cmds.keyTangent(obj,attribute=attr, time=(3,3), ox=tanV[0]) 
cmds.keyTangent(obj,attribute=attr, time=(3,3), oy=tanV[1]) 


###############################################
#PART 2
###############################################
"""

def dot (v1,v2):
    return sum([a*b for a,b in zip(v1,v2)])

#matrix bases with pascal triangle degree 3
m1 = [-1.0,3.0,-3.0,1.0]
m2 = [3.0,-6.0,3.0,0.0]
m3 = [-3.0,3.0,0.0,0.0]
m4 = [1.0,0.0,0.0,0.0]

#matrix bases with pascal triangle degree 2
mm1 =[1,-2,1]
mm2 =[-2,2,0]
mm3 =[1,0,0]

    

def __find_frame_idx(obj,attr,frame):
    
    keys= cmds.keyframe(obj, attribute= attr, query=True,timeChange=True)
    return keys.index(frame)
     

def get_tangent_points(obj,attr,frame1,frame2):
    ##this work on the assumption there is a keyframe at current time
    f1Idx = __find_frame_idx(obj,attr,frame1)
    f2Idx = __find_frame_idx(obj,attr,frame2)

    #querying the tangents
    outx = cmds.keyTangent(obj,attribute=attr, q=1, ox=1)[f1Idx]
    outy  =cmds.keyTangent(obj,attribute=attr, q=1, oy=1)[f1Idx]
    inx = cmds.keyTangent(obj,attribute=attr, q=1, ix=1)[f2Idx]
    iny  =cmds.keyTangent(obj,attribute=attr, q=1, iy=1)[f2Idx]

    t2 = [outx,outy]
    t3 = [inx, iny]

    t2[0]*=(conversionFactor)
    t3[0]*=(conversionFactor)

    values1 =cmds.keyframe( obj, attribute = attr, time=(frame1,frame1), 
            query=True, valueChange=True, timeChange=True); 
    values2 =cmds.keyframe( obj, attribute = attr, time=(frame2,frame2), 
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

def evaluate(u, points):

    t = [u**3, u**2,u,1.0]
    #t = [u]*4

    basis = [ dot(t,m1),
              dot(t,m2),
              dot(t,m3),
              dot(t,m4)]
    #just to make the code a bit more readable
    p1,p2,p3,p4 = points

    finalX =   ((basis[0] * p1[0]) +
                (basis[1] * p2[0]) +
                (basis[2] * p3[0]) +
                (basis[3] * p4[0]) )
    finalY =   ((basis[0] * p1[1]) +
                (basis[1] * p2[1]) +
                (basis[2] * p3[1]) +
                (basis[3] * p4[1]) )
    return finalX, finalY

def evaluate_derivative(u, points):
    t = [ u**2,u,1.0]
    
    p1,p2,p3,p4 = points;
    pp1 = [p2[0]-p1[0],p2[1]-p1[1]]
    pp2 = [p3[0]-p2[0],p3[1]-p2[1]]
    pp3 = [p4[0]-p3[0],p4[1]-p3[1]]

    basis = [ dot(t,mm1),
              dot(t,mm2),
              dot(t,mm3)]

    finalX =  ((basis[0] * pp1[0]) +
                (basis[1] * pp2[0]) +
                (basis[2] * pp3[0]) )
    finalY =  ((basis[0] * pp1[1]) +
                (basis[1] * pp2[1]) +
                (basis[2] * pp3[1]) )
    return finalX, finalY

def evaluate_derivative2(u, points):
    t = [ u**2,u,1.0]
    
    p1,p2,p3,p4 = points;
    pp1 = [p2[0]-p1[0],p2[1]-p1[1]]
    pp2 = [p3[0]-p2[0],p3[1]-p2[1]]
    pp3 = [p4[0]-p3[0],p4[1]-p3[1]]
    
    finalX =1.0*pp1[0]*((1.0-u)**2) + 2*pp2[0]*(1-u)*u + 2*pp3[0]*(u**2)
    finalY =1.0*pp1[1]*((1.0-u)**2) + 2*pp2[1]*(1-u)*u + 1*pp3[1]*(u**2)

    return finalX, finalY
    
def value_at_frame(frame,points):

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
    return y 


points = get_tangent_points(obj,attr,3,5)
value = value_at_frame(4.34445,points)
value = value_at_frame(5,points)



step = 1.0/99.0
crv =[]
d1 = []
for i in range(100):
    #curve 
    x,y = evaluate(step*float(i),points)
    dx,dy = evaluate_derivative(step*float(i),points)
    l= cmds.spaceLocator()[0]
    cmds.setAttr(l + '.t' , x,y,-3)
    cmds.setAttr(l +'.localScale',0.1,0.1,0.1)
    crv.append(l)

    dup = cmds.duplicate("curve1")[0]
    angle = math.atan(dy)*180.0 /math.pi
    cmds.setAttr(dup +'.t',x,y,-3)
    cmds.setAttr(dup +'.rz',angle)
    d1.append(dup)


cmds.group(d1)
cmds.group(crv)


def  bezier3(t,w):
  t2 = t * t
  t3 = t2 * t
  mt = 1-t
  mt2 = mt * mt
  mt3 = mt2 * mt
  return w[0][0]*mt3 + 3*w[1][0]*mt2*t + 3*w[2][0]*mt*t2 + w[3][0]*t3,\
  w[0][1]*mt3 + 3*w[1][1]*mt2*t + 3*w[2][1]*mt*t2 + w[3][1]*t3
"""

