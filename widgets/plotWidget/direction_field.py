
import sys
import math
from plot_widget import PlotWidget
from PySide import QtGui, QtCore

class FieldFunction(object):
    def __init__(self):
        pass

    def evaluate(self,x,y):

        raise kNotImplementedError

class InitialValuePropblemFunction(FieldFunction):
    def __init__(self, x0 , y0,step, samples, func):
        FieldFunction.__init__(self)

        self.x0 = x0
        self.y0 = y0
        self.step = step
        self.func = func
        self.samples = samples
        self.data =[]

    def evaluate(self):

        #return  self.func(x,
        print "eval"

        self.data.append([self.x0,self.y0])

        halfs = (self.samples/2)
        xi = self.x0
        yi = self.y0
        for x in range(0,halfs+1):
            yi =  yi + self.step * self.func.evaluate(xi,yi)
            xi += self.step

            self.data.append([xi,yi])
         
        xi = self.x0
        yi = self.y0
        self.data.reverse() 
        self.data.append([self.x0,self.y0])
        for x in range(-halfs,0):
            yi =  yi - self.step * self.func.evaluate(xi,yi)
            xi -= self.step

            self.data.append([xi,yi])

class TestFunction(FieldFunction):
    def __init__(self):
        FieldFunction.__init__(self)


    def evaluate(self,x,y):

        return y + x**2 


class DirectionField(object):
    def __init__(self, step, samples, func):
        self.step = float(step)
        self.samples =samples
        self.func = func
        self.scale = 0.4 *self.step
        self.__inner_step= 0.1

        self.data = [] 
    def evaluate(self):

        halfs = (self.samples/2)
        for x in range(-halfs,halfs+1):

            x0 = float(x) * self.step
            for y in range(-halfs,halfs+1):

                y0 =float(y) * self.step

                gradient = self.func.evaluate( x0,
                                  y0)
                
                #computing the front point
                xd = x0 + self.__inner_step

                #now we eval the eq of the line at xf and xb
                #yd = xd*gradient - gradient*x0 + y0
                #yb = xb*gradient - gradient*x0 + y0
                xv = self.__inner_step
                yv = gradient * xv
                mag = math.sqrt(xv*xv + yv*yv)

                xd= (xv/mag)*self.scale
                yd= (yv/mag)*self.scale

                xb = x0 - xd
                yb = y0 - yd

                xf = x0 +xd
                yf = y0 +yd
                
                #print (x0, y0)

                self.data.append([xf,yf])
                self.data.append([xb,yb])

                #self.data.append([x0,y0])
                #self.data.append([x0,y0])
                

class DirectionFieldPlotter(PlotWidget):
    def __init__(self, field, field_color, fun_list, fun_color):
        PlotWidget.__init__(self)

        self.field = field
        self.field_color = field_color
        self.initial_funcs =fun_list 
        self.initial_colors=fun_color 
        

    def drawData(self,qp):

        #drawing the field
        pts = self.field.data

        #configuring the pen
        pen= QtGui.QPen()
        color = QtGui.QColor(*self.field_color)
        pen.setColor(color)
        pen.setWidthF(2)
        
        qp.setPen(pen)
        
        for i in range(0,len(pts),2) :

            qp.drawLine( self.fixQPoint(pts[i]) , self.fixQPoint(pts[i+1]) )


        for fun,color in zip(self.initial_funcs, self.initial_colors):
            #drawing the initial value problem
            pts =fun.data
            pen= QtGui.QPen()
            color = QtGui.QColor(*color)
            pen.setColor(color)
            pen.setWidthF(2)
            qp.setPen(pen)


            for i,p in enumerate(pts[:-1]) :
                qp.drawLine( self.fixQPoint(p) , self.fixQPoint(pts[i+1]) )

#    def keyPressEvent(self, e):
#        d = self.funcs[0].degree
#        if e.key() == 45:
#            d-=2
#            self.funcs[0].generate_taylor(d)
#        elif e.key() == 43:
#            d+=2
#            self.funcs[0].generate_taylor(d)
#        print "current taylor polynomial degree:",d
#
#        self.update()





    def get_data(self):
        return self.data


if __name__ == "__main__":
    print "hello"

    fun = TestFunction()
    field = DirectionField(0.2, 30,fun)
    field.evaluate()
    init_fun = InitialValuePropblemFunction(0,-1,0.1,60, fun)
    init_fun.evaluate()

    init_fun2 = InitialValuePropblemFunction(0,0,0.1,60, fun)
    init_fun2.evaluate()

    init_fun3 = InitialValuePropblemFunction(0,1,0.1,60, fun)
    init_fun3.evaluate()

    fun_list = [init_fun, init_fun2, init_fun3]
    fun_colors = [(0,240,0 ), (0,0,240 ), (200,200,0 )]
    app =QtGui.QApplication(sys.argv)


    field_plot = DirectionFieldPlotter(field, (240,0,0),fun_list, fun_colors)
    desktop = QtGui.QApplication.desktop().availableGeometry(field_plot).center();
    field_plot.move(desktop)
    field_plot.resize(800,800)
    field_plot.scale=125
    field_plot.lineStep = 1
    field_plot.show()

    app.exec_()


    app.exit()
