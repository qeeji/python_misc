'''
Created on Oct 10, 2013

@author: mog
'''

from PySide import QtGui , QtCore

import math

from colorWidget import ColorWidget
from colorWidget import OptionColorWidget 

import math

class PlotWidget(QtGui.QWidget):
    def __init__(self,parent = None , width = 310 , heigth = 210):
        QtGui.QWidget.__init__(self,parent)
       
        ##The width of the ui
        self.width = width
        ##The heigth of the ui
        self.height = heigth
        ##The points to be draw on the widget
        
        #Pan amount on the widget
        self.__pan = [0,0]
        #Scale amount on the widget
        self.__scale = 1.001
        #The step between each grid line
        self.__lineStep = 15
        #Private value holder for show grid
        self.__showGrid = 1
        #Private value holder for showing the axis
        self.__showAxis = True
        #Private holder for the paint Mode 
        self.__paintMode = 1
        #Private holder for drawing or not the numbers on the grid
        self.__showNumbers = 1
        #Attribute holding where the drag started in the widget
        self._dragStart = [0,0]
        #Attribute holding whether the widget is being dragged or not
        self._dragging = 0
        
        self.setGeometry(0,0,width,heigth)
        self.setMouseTracking(False)
        self.__computeOrigin()
        self.optionW = None
        
        self.__startBackgroundColor = [89, 89, 89]
        self.__endBackgroundColor = [32, 32, 32]
        self.__defaultColor = [255,0,0]

        #list of list containig points to draw
        self.point_sets =[]


    #properties
    @property
    def startBackgroundColor(self):
        
        return self.__startBackgroundColor

    @startBackgroundColor.setter
    def startBackgroundColor(self,value):
        
        if type(value).__name__ != "list" :
            raise RuntimeError ("Please provide an float list value ,example = [0,0,0] ")
            return
        
        self.__startBackgroundColor = value
        self.update()

    @property
    def endBackgroundColor(self):
        
        return self.__endBackgroundColor

    @endBackgroundColor.setter
    def endBackgroundColor(self,value):
        
        if type(value).__name__ != "list" :
            raise RuntimeError ("Please provide an float list value ,example = [0,0,0] ")
            return
        
        self.__endBackgroundColor = value
        self.update()

    
    
    @property
    def paintMode(self):
        
        return self.__paintMode

    @paintMode.setter
    def paintMode(self,value):
        
        if type(value).__name__ != "int" :
            raise RuntimeError ("Please provide an int value between 0-1 ")
            return
        
        self.__paintMode = value
        self.update()
        
        
    @property
    def showAxis(self):
        return self.__showAxis

    @showAxis.setter
    def showAxis(self,value):
        
        if type(value).__name__ != "bool" :
            raise RuntimeError ("Please provide a bool value")
            return
        
        self.__showAxis = value
        self.update()
        
        
    @property
    def showGrid(self):
        return self.__showGrid

    @showGrid.setter
    def showGrid(self,value):
        
        if type(value).__name__ != "bool" :
            raise RuntimeError ("Please provide a bool value")
            return
        
        self.__showGrid = value
        self.update()
        
        
    @property
    def lineStep(self):
        return self.__lineStep

    @lineStep.setter
    def lineStep(self,value):
        
        if not type(value).__name__ in ["int" , "float"] :
            raise RuntimeError ("Please provide a int or float value")
            return
        
        self.__lineStep = value
        self.update()
        
    
    @property
    def scale(self):
        return self.__scale  
    
    @scale.setter
    def scale(self,value):
        
        if not type(value).__name__ in ["int" , "float"] :
            raise RuntimeError ("Please provide a int or float value")
            return
        
        self.__scale = value
        self.update()
        
        
        
    @property
    def pan(self):
        return self.__pan
    
      
    @pan.setter
    def pan(self,value):
        
        if not type(value).__name__ in ["list"] :
            raise RuntimeError ("Please provide a int or float value")
            return
        
        if len(value) != 2 :
            raise RuntimeError ("Please provide a int2 or float2 value , ex [ 0,0]")
            return
            
        
        self.__pan = value
        self.update()

    def clear_data(self): 
        """
        This function removes any stored point inside the class, meaning nothing will be drawn
        anymore
        """
        self.point_sets = []

    def add_points(self, points):
        """
        This function adds a point set to draw to the internal data struct.
        @param points: list of points to be drawn, each point is composed of a list or tuple of 
                        two elements representing x and y positions, example:
                        [[x1,y1],[x2,y2],[x3,y3] .....]
        """

        self.point_sets.append(points)

    def mousePressEvent(self, event):
        """
        mouse clicks events
        """
        posX =  event.pos().x()
        posY =  event.pos().y()
        keymod = QtGui.QApplication.keyboardModifiers() 
        
        if keymod == QtCore.Qt.NoModifier :
            if event.button() ==QtCore.Qt.MiddleButton:
                
                self._dragStart = [posX , posY]
                self._dragging  = 1
        
        if keymod == QtCore.Qt.AltModifier :
            self.popOptions()
        
        QtGui.QWidget.mouseReleaseEvent(self,event) 
        event.ignore()        

    def mouseMoveEvent(self,event):
        
        posX =  event.pos().x()
        posY =  event.pos().y()
        
        if self._dragging:
             
            x = (posX -self._dragStart[0])/float(self.scale)
            y = (posY - self._dragStart[1])/float(self.scale)

            self.pan = [self.pan[0] + x , self.pan[1] + y]

            self._dragStart = [posX , posY]

        QtGui.QWidget.mouseReleaseEvent(self,event) 
        
        
    def mouseReleaseEvent(self , event):

        self._dragging = 0
        #passing  along the event
        QtGui.QWidget.mouseReleaseEvent(self,event) 
        
    def wheelEvent(self , event):   
         
        keymod = QtGui.QApplication.keyboardModifiers() 
        if keymod == QtCore.Qt.NoModifier :
            self.scale = self.scale + (event.delta()*0.003)
            
        if keymod == QtCore.Qt.ControlModifier :
            if event.delta() > 0 :
                self.lineStep = self.__lineStep + 1
            else :
                self.lineStep = self.__lineStep - 1
                
            
        
    def resizeEvent(self , event):
        
        posX = event.size().width()
        posY = event.size().height()
        
        self.width = posX
        self.height = posY
        

    def __computeOrigin (self ):
        '''
        This procedure computes the origin based on widget size and pan
        '''

        self.origin = [(self.width/2.0 ) + (self.__pan[0] * self.scale), 
                        ( self.height/2.0 ) + (self.__pan[1]* self.scale) ]
        
    def drawData(self,qp): 
        """
        This function implements the defualt behavior for drawing the data,
        can be overridden to implement different behaviors
        @param qp: QPainter to use for the drawing
        """
        for points in self.point_sets:
            
            pen= QtGui.QPen()
            color = QtGui.QColor(*self.__defaultColor)
            pen.setColor(color)
            pen.setWidthF(2)

            qp.setPen(pen)
            if self.paintMode == 0 :
                self.__drawPoints(qp,points)
            
            elif self.paintMode == 1 :
                self.__drawLines(qp,points)
    

    def paintEvent(self, e):
        '''
        This procedure draws the widget
        '''
        qp = QtGui.QPainter()
        qp.begin(self)
        qp.setRenderHint(QtGui.QPainter.Antialiasing)
        self.drawBG(qp)
        self.drawGrid(qp)
        
        self.drawData(qp)    
        self.redrawContour(qp)
        qp.end()


        
    def drawBG(self, qp):
        """
        Draws the background
        @param qp: QPainter to use for the drawing
        """
        
        pen= QtGui.QPen()
        color = QtGui.QColor(255, 255, 255)
        pen.setColor(color)
        pen.setWidthF(3.5)
        
        qp.setPen(pen)
        start = QtCore.QPointF(0, 0)
        stop = QtCore.QPointF(self.width, self.height)
        gradient = QtGui.QLinearGradient(start, stop)
        #setupping the gradieng
        gradient.setColorAt(0, QtGui.QColor(self.__startBackgroundColor[0], 
                                            self.__startBackgroundColor[1], 
                                            self.__startBackgroundColor[2]))
        gradient.setColorAt(1, QtGui.QColor(self.__endBackgroundColor[0], 
                                            self.__endBackgroundColor[1], 
                                            self.__endBackgroundColor[2]))

        brush = QtGui.QBrush(gradient)
        qp.setBrush(brush)
        rectangle=QtCore.QRectF (0.0, 0.0, self.width, self.height);        
        qp.drawRoundedRect(rectangle, 8.0, 8.0);
        

    def redrawContour (self, qp):
        '''
        This procedure rewrites the contour after everyrthing 
        so it s always on top
        '''
        pen= QtGui.QPen()
        color = QtGui.QColor(255, 255, 255)
        pen.setColor(color)
        pen.setWidthF(3.5)
        qp.setPen(pen)
        qp.setBrush(QtGui.QColor(200, 0, 0 ,0))
        rectangle=QtCore.QRectF (0.0, 0.0, self.width, self.height);        
        qp.drawRoundedRect(rectangle, 8.0, 8.0);
            
        
    def drawGrid(self, qp):
        '''
        This procedure draws the grid
        @param  qp : QPainter , the painter to use to draw the ui
        '''
        self.__computeOrigin()
        
        #create pen
        pen= QtGui.QPen()
        
        
        #get current width of the widget
        width = self.width
        height = self.height
        
        width2 = width/2.0
        height2= height/2.0
        
        
        #Define numbers pen
        penText= QtGui.QPen()
        color = QtGui.QColor(255, 255, 255)
        penText.setColor(color)
        penText.setWidthF(2)
        
        
        #draw grid lines
        #pen color
        if self.__showGrid == 1 :
            color = QtGui.QColor(120, 120, 120)
            pen.setColor(color)
            pen.setWidthF(0.5)
            qp.setPen(pen)
            
            #compute how many vertical  lines fits in the view then draw them
            #check first if origin is left out or right out
            vLineNumbRight = 0 
            vLineNumbLeft = 0
            
            
            #Check if to draw the middle grid or not , the mid grid needs to be draw if the axis are of but the  grid on
            startRange = 1
            if self.__showAxis == 0 :
                startRange = 0 
             
             
            if width > self.origin[0] :
                vLineNumbRight = int(width - self.origin[0]) // (self.__lineStep * self.scale) + 1
                vLineNumbRight = int(vLineNumbRight)
            if self.origin[0] > 0 :
                vLineNumbLeft = int( self.origin[0] ) // (self.__lineStep * self.scale) +1
                vLineNumbLeft = int(vLineNumbLeft)
                      
            upY = self.origin[1] + height2 -3
            lowY = self.origin[1]- height2 + 3
             
             
            for h in range(startRange,vLineNumbRight) :
                qp.drawLine(self.origin[0]  + (h * self.__lineStep* self.scale)  , upY - (self.__pan[1]*self.scale), 
                        self.origin[0] +  (h * self.__lineStep* self.scale) , lowY - (self.__pan[1]*self.scale))
            for h in range(1,vLineNumbLeft) :
                qp.drawLine(self.origin[0] - (h * self.__lineStep* self.scale)  , upY- (self.__pan[1]*self.scale), 
                        self.origin[0] -  (h * self.__lineStep* self.scale) , lowY- (self.__pan[1]*self.scale) )
              
     
            #compute how many horizontal  lines fits in the view then draw them
            hLineNumbRight = 0 
            hLineNumbLeft = 0
             
            if height > self.origin[1] :
                hLineNumbRight = int(height - self.origin[1]) // (self.__lineStep * self.scale) + 1
                hLineNumbRight = int(hLineNumbRight)
            if self.origin[1] > 0 :
                hLineNumbLeft = int( self.origin[1] ) // (self.__lineStep * self.scale) +1
                hLineNumbLeft = int(hLineNumbLeft)
                         
            rightX = self.origin[0] + width2 -3
            leftX = self.origin[0]- width2 + 3
             
            for h in range(startRange, hLineNumbRight) :
                qp.drawLine(rightX - (self.__pan[0]*self.scale), self.origin[1]+ (h * self.__lineStep* self.scale) , 
                        leftX- (self.__pan[0]*self.scale) ,self.origin[1] +  (h * self.__lineStep* self.scale)  )
             
            for h in range(1, hLineNumbLeft) :
                qp.drawLine(rightX - (self.__pan[0]*self.scale), self.origin[1] - (h * self.__lineStep* self.scale)  , 
                        leftX - ( self.__pan[0]*self.scale) , self.origin[1] -  (h * self.__lineStep* self.scale)  )
        
                
            qp.setPen(penText)
            point = QtCore.QPoint()
            for h in range(1, hLineNumbLeft+1) :
                point = QtCore.QPoint(self.origin[0] + 2, self.origin[1] - (h * self.__lineStep* self.scale) -2)
                qp.drawText(point , str(h *  self.__lineStep))
                
            for h in range(1, hLineNumbRight+1) :
                point = QtCore.QPoint(self.origin[0] + 2, self.origin[1] + (h * self.__lineStep* self.scale) -2)
                qp.drawText(point , str(-h *  self.__lineStep))
                
            for h in range(1,vLineNumbRight +1) :
                point = QtCore.QPoint(self.origin[0]  + (h * self.__lineStep* self.scale) +2  , self.origin[1] - 4) 
                qp.drawText(point , str(h *  self.__lineStep))
            
            for h in range(1,vLineNumbLeft + 1) :
                point = QtCore.QPoint(self.origin[0]  - (h * self.__lineStep* self.scale) +2  , self.origin[1] - 4) 
                qp.drawText(point , str(-h *  self.__lineStep))
        
        if self.__showAxis == 1 :     
             
            #draw main cross
            color = QtGui.QColor(0, 0, 0)
            pen.setColor(color)
            pen.setWidthF(1)
            qp.setPen(pen)
            
            #orizontal line
            #the 3 offset is in order to not draw over the border
             
            #Check if the line is actually on screen
            if height > self.origin[1] and self.origin[1] > 0:

                qp.drawLine((self.origin[0] - width2 - (self.__pan[0]*self.scale) + 3) 
                            , self.origin[1]  , 
                            (self.origin[0] + width2 - (self.__pan[0]*self.scale) -3 ), 
                            self.origin[1] )
            
            
            #vertical line
            #Check if the line is actually on screen
            if width > self.origin[0] and self.origin[0] > 0:
                qp.drawLine(self.origin[0]  , (self.origin[1] + height2 - (self.__pan[1]*self.scale) -3), 
                            self.origin[0]  , (self.origin[1]- height2 - (self.__pan[1]*self.scale) + 3) )
                pen.setWidthF(3.5)
                qp.setPen(pen)
                qp.drawPoint(self.origin[0], self.origin[1])
      
        if self.__showNumbers == 1 :
            #draw the zero 
            qp.setPen(penText)
            qp.setFont(QtGui.QFont('Decorative', 10))
            qp.drawText(QtCore.QPoint(self.origin[0] +2 , self.origin[1] - 2) , "0")
        
    def __drawPoints(self ,qp,points):
        
        #configuring the pen
        pen= QtGui.QPen()
        color = QtGui.QColor(255,0 , 0)
        pen.setColor(color)
        pen.setWidthF(3.5)
        
        qp.setPen(pen)
        #looping the points and drawing them, there might be a method
        #to draw all at once maybe?
        for p in points :
            qp.drawPoint( self.fixQPoint(p))
    
    def __drawLines(self , qp, points) :
        
        #configuring the pen
        pen= QtGui.QPen()
        color = QtGui.QColor(255,0 , 0)
        pen.setColor(color)
        pen.setWidthF(2)
        
        qp.setPen(pen)
        
        for i,p in enumerate(points[:-1]) :
            qp.drawLine( self.fixQPoint(p) , self.fixQPoint(points[i+1]) )
                
    def fixQPoint(self , point ):
        '''
        This procedure adds scale and pan to the computed point
        @param point :  float2 , the point
        @param return : QPoint() 
        '''
        #we flip the - y coordinate due to the qt coordinate system 
        return QtCore.QPointF((point[0] *self.scale )+ self.origin[0] , 
                              -(point[1] *self.scale ) + self.origin[1] )
        
        
    def popOptions(self):
        '''
        This procedure shows up the settings ui
        '''
        self.optionW = OptionColorWidget(parent = self , plotter = self)
        self.optionW.show()
        
        
