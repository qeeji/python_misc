import sys
sys.path.append("G:\dev\python_misc\math\maya_curve")
sys.path.append("G:\dev\python_misc\widgets")


from plotWidget.plot_widget import PlotWidget
from maya_curve import AnimCurve

path = r"C:\Users\mgiordano\Desktop\test.anim"
class DrawableFunction(object):
    def __init__(self):
        self.color = [255,0,0]

    def evaluate(self,x):
        raise NotImplemented

class PieceWiseAnim(DrawableFunction):
    def __init__(self, anim, frame):
        DrawableFunction.__init__(self)
    
        self.anim = anim
        self.frame = frame
    def evaluate(self,x):
        
        return self.anim.evaluate_at_param(x,self.frame)
        


    

class TaylorPlotter(PlotWidget):
    def __init__(self, path):
        PlotWidget.__init__(self)
        
        self.sampleCount=20;
        self.funcs = []
        
        anim = AnimCurve(path)
       
        for d in anim.data_file:
            #f = lambda x: anim.evaluate_at_param(x, d["start"])
            print d["start"]
            #print f(0.5) 
            draw = PieceWiseAnim(anim, d["start"])
            print draw.evaluate(0.5)
            self.funcs.append(draw)
        
    def drawData(self,qp):

        #lets sample the function and draw the points
        step = 1.0/float(self.sampleCount-1)

        self.clear_data()
        for func in self.funcs:
            self.point_sets.append(  [func.evaluate((float(i)*step)) for i in xrange(self.sampleCount)])

        PlotWidget.drawData(self,qp)

    def keyPressEvent(self, e):
        
        if e.key() == 45:
            self.sampleCount -=5

        elif e.key() == 43:
            
            self.sampleCount +=5


        self.update()
        
p = TaylorPlotter(path)
p.scale =40
p.paintMode =0
p.lineStep = 1
p.show()

