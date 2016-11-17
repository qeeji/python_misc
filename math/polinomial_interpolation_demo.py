import os
import sys

#needed to find the plot widget, not ideal, need to find a better way
p= os.path.abspath(os.path.dirname(__file__))
to_append = p.rsplit("\\",1)[0]
sys.path.append(to_append)

from widgets.plotWidget.plot_widget import PlotWidget
from PySide import QtGui, QtCore
import polinomial_interpolation

class PolynomialInterpolationPlotter(PlotWidget):
    """
    Light wrap on plot widget to draw sampled points 
    """
    def __init__(self, points, interpolated_points):
        """
        @param points: [float[2]] , list of points that are used to generate the polynomial 
        @param interpolated_points: [float[2]] , list of points sampled from the polynomial 
        """
        PlotWidget.__init__(self)


        self.points=points 
        self.interpolated_points = interpolated_points

    def drawData(self,qp):

        #drawing the field
        pts = self.points

        #configuring the pen
        pen= QtGui.QPen()
        color = QtGui.QColor(255,0,0)
        pen.setColor(color)
        pen.setWidthF(10)
        qp.setPen(pen)
        
        #here we draw the field, we use two point at the time for a single line
        for i in range(0,len(pts)) :

            qp.drawPoint( self.fixQPoint(pts[i]))

        #here we draw the interpolated points
        pen= QtGui.QPen()
        color = QtGui.QColor(0,255,0)
        pen.setColor(color)
        pen.setWidthF(5)
        qp.setPen(pen)
        pts = self.interpolated_points
        for i in range(0,len(pts)) :

            qp.drawPoint( self.fixQPoint(pts[i]))


if __name__ == "__main__":
    #the data set we want to interpolate
    points = [[0,0], [3,5], [6,-10], [8,-7], [9,-4],[11,2], [12,-2]]
    #instancing the interpolator
    interpolator =  polinomial_interpolation.PolinomialInterpolator(points)
    #this method solves the matrix and computes the coefficients of the polinomial
    interpolator.solve()

    #using the interpolator to sample the polinomial for as many points as we require
    point_count = 400 
    step = 13.0/float(point_count)
    interpolated_points =[[step*i,interpolator.evaluate(step*i)]   for i in range(point_count)]

    #starting a qt appliation and passing the points to plot
    app =QtGui.QApplication(sys.argv)
    plotter = PolynomialInterpolationPlotter(points, interpolated_points)

    desktop = QtGui.QApplication.desktop().availableGeometry(plotter).center();
    plotter.move(desktop.x() -400,desktop.y()-400 )
    plotter.resize(800,800)
    plotter.scale=30 
    plotter.lineStep = 1
    plotter.show()
    app.exec_()


    app.exit()
