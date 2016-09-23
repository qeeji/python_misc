
import sys
import math
from plot_widget import PlotWidget
from PySide import QtGui, QtCore

class FieldFunction(object):
    """
    This function is an abastraction for a generic function, which can be evaluate on both
    x and y.
    Reimplemente the evaluate method wehn subclassing
    """
    def __init__(self):
        pass

    def evaluate(self,x,y):
        """
        returns the value of the function when evaluated at x,y
        @param x: float, value of x
        @param y: float ,value of y
        """

        raise kNotImplementedError

class InitialValuePropblemFunction(FieldFunction):
    """
    This is a subclass function that represent an initial value problem funtion,
    meaning it will evaluate the function with the giving condintion, the way it works
    is that it will use the derivative function to drive the tracing of the solution,
    using the euler method
    """
    def __init__(self, x0 , y0,step, samples, func):
        """
        @param x0: float, initial condition for x
        @param y0: float, initial condition for y
        @param step: float, the step used in the euler method progression
        @param samples: int, how many times the euler method will be applied, splitted between
                        positive and negative range
        @param func: FieldFunction subclsass, function givin you the value of the derivative at 
                     wanted point
        """

        FieldFunction.__init__(self)

        self.x0 = x0
        self.y0 = y0
        self.step = step
        self.func = func
        self.samples = samples
        self.data =[]

    def evaluate(self):
        """
        This is a variation of the evaluate function that allows to trace the solution 
        using the given parameter of the constructor
        It will build the evaluated points and add them to self.data
        """


        #appending the starting condition
        self.data.append([self.x0,self.y0])

        #splitting the sampels between positive and negative the range
        #where the center is the initial condition
        halfs = (self.samples/2)
        xi = self.x0
        yi = self.y0

        #looping the positive range
        for x in range(0,halfs+1):
            #evaluating the func and applying euler method
            yi =  yi + self.step * self.func.evaluate(xi,yi)
            xi += self.step

            #appending the new point
            self.data.append([xi,yi])
         
        #starting again for the negative range
        xi = self.x0
        yi = self.y0
        #here we reverse the list just so it is easier to draw
        self.data.reverse() 
        self.data.append([self.x0,self.y0])
        #tracing the negative range
        for x in range(-halfs,0):
            yi =  yi - self.step * self.func.evaluate(xi,yi)
            xi -= self.step

            self.data.append([xi,yi])

#dummy test function implementing the derivative funciton dy/dx = y + x**2
class TestFunction(FieldFunction):
    def __init__(self):
        FieldFunction.__init__(self)


    def evaluate(self,x,y):

        return y + x**2 


class DirectionField(object):
    """
    This class is in charge to evalaute the direction field, keep in mind that 
    this is just a discretization of the field in order to be able to draw it
    is not actually used in the computation, the solution is traced in the initial
    value problem function
    """
    def __init__(self, step, samples, func):
        """
        Constructor
        @param step: the step to use when evaluating points in a grid fashion
        @param samples: how many samples we are going to take in each direction
        @param funct: FieldFunction, the function we are going to use to evaluate 
                     field
        """
        
        self.step = float(step)
        self.samples =samples
        self.func = func
        self.scale = 0.4 *self.step
        #step used to compute the delta y from the rise
        self.__inner_step= 0.1

        self.data = [] 
    def evaluate(self):
        """
        This function will evalaute all the needed gradients for the field
        as two points froming a line
        """


        #here we split the range for x
        halfs = (self.samples/2)
        for x in range(-halfs,halfs+1):

            #making sure x is float and multipling by the step
            x0 = float(x) * self.step

            #splitting y reange
            for y in range(-halfs,halfs+1):

                #making sure the y is a flaot and adding step
                y0 =float(y) * self.step

                #evaluating the gradient
                gradient = self.func.evaluate( x0,
                                  y0)

                #now we evaluate the fu
                xv = self.__inner_step
                #extracting y component from the gradient
                yv = gradient * xv

                #normalizing the vector and scaling by wanted amount
                mag = math.sqrt(xv*xv + yv*yv)
                xd= (xv/mag)*self.scale
                yd= (yv/mag)*self.scale

                #computing back point of the vector(start)
                xb = x0 - xd
                yb = y0 - yd

                #computing front point of the vector (end) 
                xf = x0 +xd
                yf = y0 +yd
                

                self.data.append([xf,yf])
                self.data.append([xb,yb])
                

class DirectionFieldPlotter(PlotWidget):
    """
    This class is in charge of displaing the direciton field and the 
    solution of the given functions
    """
    def __init__(self, field, field_color, fun_list, fun_color):
        """
        @param field: DirectionField, the field we want to display
        @param field_color: int[3] each range 0-255, the color we wish to use for the field
        @param fun_list: [InitialValuePropblemFunction], list of functions to be displayed
        @param fun_color: [int[3]] , list of color, one for each function
        """
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
        
        #here we draw the field, we use two point at the time for a single line
        for i in range(0,len(pts),2) :

            qp.drawLine( self.fixQPoint(pts[i]) , self.fixQPoint(pts[i+1]) )


        #here we draw the function, we use consecutive point for lines, like a line strip
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


    def get_data(self):
        return self.data


if __name__ == "__main__":
    #dummy example

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
