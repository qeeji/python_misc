import math

from PySide import QtGui, QtCore

from plot_widget import PlotWidget

class DrawableFunction(object):
    def __init__(self):
        self.color = [255,0,0]

    def evaluate(self,x):

        raise NotImplemented


class SinFunc(DrawableFunction):

    def evaluate(self,x):
        return math.sin(x)


class SinTaylor(DrawableFunction):
    def __init__(self):
        DrawableFunction.__init__(self)
        self.coeffs = []
        self.degree = 0

    def evaluate(self,x):
        
        powx =1.0;
        total = 0.0;

        for c in self.coeffs:
            total+= c * powx
            powx *=x;
        
        return total

    def generate_taylor(self, degree):
        
        self.degree = degree
        self.coeffs = []
        sign = 1.0
        val = 0.0
        for i in range(degree+1):
            coeff = 1.0/math.factorial(i)

            self.coeffs.append(sign*val*coeff)
            if val<= 0.0:
                val=1.0
            else:
                val =0.0
                sign*=-1.0

class TaylorPlotter(PlotWidget):
    def __init__(self):
        PlotWidget.__init__(self)
        
        self.sampleCount=100;
        self.funcs = []

    def drawData(self,qp):

        #lets sample the function and draw the points
        step = 30.0/float(self.sampleCount)

        self.clear_data()
        for func in self.funcs:
            self.point_sets.append(  [[-15.0 +(float(i)*step),
                            func.evaluate(-15.0 +(float(i)*step))] for i in xrange(self.sampleCount)])

        PlotWidget.drawData(self,qp)

    def keyPressEvent(self, e):
        d = self.funcs[0].degree
        if e.key() == 45:
            d-=2
            self.funcs[0].generate_taylor(d)
        elif e.key() == 43:
            d+=2
            self.funcs[0].generate_taylor(d)
        print "current taylor polynomial degree:",d

        self.update()
    

import sys
if __name__ == "__main__" :
    app =QtGui.QApplication(sys.argv)
    p = TaylorPlotter()        
    desktop = QtGui.QApplication.desktop().availableGeometry(p).center();
    p.move(desktop)
    p.resize(600,400)
    p.scale=40
    p.lineStep = 1
    p.show()
    #p.funcs.append( DrawableFunction(math.cos))
    sinF = SinTaylor()
    sinF.color=[0,0,180]
    sinF.generate_taylor(0)
    p.funcs.append(sinF )
    p.funcs.append(SinFunc() )
    points = [[x,x] for x in range(10)]
    p.add_points(points)
    app.exec_()


    app.exit()
