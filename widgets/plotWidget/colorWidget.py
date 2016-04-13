

from PySide import QtGui , QtCore

from Shiboken import shiboken
import math


#this is just a color picker

class ColorWidget(QtGui.QWidget):
    
    colorChangedSignal = QtCore.Signal(int , int ,int)
    
    def __init__(self, parent = None , color = [255,0,0]):
        QtGui.QWidget.__init__(self,parent)
        
        
        self.width  = 200
        self.height = 100
        self.setGeometry(0,0,self.width,self.height)
        
        self.__color = color

    @property
    def color(self):
        return self.__color
        
        
    @color.setter
    def color (self ,color = []):
        self.__color = color
        self.colorChangedSignal.emit(self.__color[0],self.__color[1],self.__color[2])
        self.update()
        
        
    def mousePressEvent(self, event):
        col = QtGui.QColorDialog.getColor()
        if col.isValid():
            self.color = [col.red() , col.green(), col.blue()]
            self.colorChangedSignal.emit(self.__color[0],self.__color[1],self.__color[2])
        self.update()
    def drawBG(self, qp):
        
        pen= QtGui.QPen()
        color = QtGui.QColor(0, 0, 0)
        pen.setColor(color)
        pen.setWidthF(2)
        
        qp.setPen(pen)


        brush = QtGui.QBrush(QtGui.QColor(self.color[0], self.color[1], self.color[2]))
        qp.setBrush(brush)
        rectangle=QtCore.QRectF (0.0, 0.0, self.width, self.height);        
        qp.drawRoundedRect(rectangle, 2.0, 2.0);
        
    def paintEvent(self, e):
        '''
        This procedure draws the widget
        '''
        qp = QtGui.QPainter()
        qp.begin(self)
        qp.setRenderHint(QtGui.QPainter.Antialiasing)
        self.drawBG(qp)
        qp.end()
        
        
    def resizeEvent(self , event):
        
        posX = event.size().width()
        posY = event.size().height()
        
        self.width = posX
        self.height = posY
        
        
try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

#simple ui to set directly on the plotter the colors etc    
#nothing fancy not willing to spend too much time in commenting this:P
class OptionColorWidget(QtGui.QDialog):
    def __init__(self,parent = None , plotter = None):
        QtGui.QDialog.__init__(self, parent )
        
        
        self.plotter= plotter
        
        self.setObjectName(_fromUtf8("Dialog"))
        self.resize(411, 310)
        self.verticalLayout = QtGui.QVBoxLayout(self)
        self.verticalLayout.setObjectName(_fromUtf8("verticalLayout"))
        self.settingsGB = QtGui.QGroupBox(self)
        self.settingsGB.setObjectName(_fromUtf8("settingsGB"))
        self.gridLayout_7 = QtGui.QGridLayout(self.settingsGB)
        self.gridLayout_7.setObjectName(_fromUtf8("gridLayout_7"))
        self.bgGB = QtGui.QGroupBox(self.settingsGB)
        self.bgGB.setObjectName(_fromUtf8("bgGB"))
        self.startBgL = QtGui.QLabel(self.bgGB)
        self.startBgL.setGeometry(QtCore.QRect(10, 23, 56, 16))
        self.startBgL.setObjectName(_fromUtf8("startBgL"))
        self.endBgL = QtGui.QLabel(self.bgGB)
        self.endBgL.setGeometry(QtCore.QRect(10, 46, 51, 16))
        self.endBgL.setObjectName(_fromUtf8("endBgL"))
        self.startBgCL = ColorWidget(self.bgGB)
        self.startBgCL.setGeometry(QtCore.QRect(72, 23, 51, 17))

        self.startBgCL.setObjectName(_fromUtf8("startBgCL"))
        self.endBgCL = ColorWidget(self.bgGB)
        self.endBgCL.setGeometry(QtCore.QRect(72, 46, 51, 17))
       
        self.endBgCL.setObjectName(_fromUtf8("endBgCL"))
        self.gridLayout_7.addWidget(self.bgGB, 0, 0, 1, 1)
        self.grapGB = QtGui.QGroupBox(self.settingsGB)
        self.grapGB.setMinimumSize(QtCore.QSize(220, 0))
        self.grapGB.setObjectName(_fromUtf8("grapGB"))
        self.gridLayout_4 = QtGui.QGridLayout(self.grapGB)
        self.gridLayout_4.setObjectName(_fromUtf8("gridLayout_4"))
        self.graphL = QtGui.QLabel(self.grapGB)
        self.graphL.setObjectName(_fromUtf8("graphL"))
        self.gridLayout_4.addWidget(self.graphL, 0, 0, 1, 1)
        self.frame_4 = ColorWidget(self.grapGB)
        
        self.frame_4.setObjectName(_fromUtf8("frame_4"))
        self.gridLayout_4.addWidget(self.frame_4, 0, 1, 1, 1)
        self.gTypeL = QtGui.QLabel(self.grapGB)
        self.gTypeL.setObjectName(_fromUtf8("gTypeL"))
        self.gridLayout_4.addWidget(self.gTypeL, 0, 2, 1, 1)
        self.gTypeCB = QtGui.QComboBox(self.grapGB)
        self.gTypeCB.setObjectName(_fromUtf8("gTypeCB"))
        self.gTypeCB.addItem(_fromUtf8(""))
        self.gTypeCB.addItem(_fromUtf8(""))
        self.gridLayout_4.addWidget(self.gTypeCB, 0, 3, 1, 1)
        self.thickL = QtGui.QLabel(self.grapGB)
        self.thickL.setObjectName(_fromUtf8("thickL"))
        self.gridLayout_4.addWidget(self.thickL, 1, 0, 1, 2)
        self.thickSB = QtGui.QDoubleSpinBox(self.grapGB)
        self.thickSB.setProperty("value", 2.0)
        self.thickSB.setObjectName(_fromUtf8("thickSB"))
        self.gridLayout_4.addWidget(self.thickSB, 1, 2, 1, 2)
        self.gridLayout_7.addWidget(self.grapGB, 0, 1, 1, 1)
        self.gridGB = QtGui.QGroupBox(self.settingsGB)
        self.gridGB.setObjectName(_fromUtf8("gridGB"))
        self.gridLayout_6 = QtGui.QGridLayout(self.gridGB)
        self.gridLayout_6.setObjectName(_fromUtf8("gridLayout_6"))
        self.axisGB = QtGui.QGroupBox(self.gridGB)
        self.axisGB.setObjectName(_fromUtf8("axisGB"))
        self.gridLayout = QtGui.QGridLayout(self.axisGB)
        self.gridLayout.setObjectName(_fromUtf8("gridLayout"))
        self.axisCK = QtGui.QCheckBox(self.axisGB)
        self.axisCK.setObjectName(_fromUtf8("axisCK"))
        self.gridLayout.addWidget(self.axisCK, 0, 0, 1, 2)
        self.axisL = QtGui.QLabel(self.axisGB)
        self.axisL.setObjectName(_fromUtf8("axisL"))
        self.gridLayout.addWidget(self.axisL, 1, 0, 1, 1)
        self.axisCL = ColorWidget(self.axisGB)
        
        self.axisCL.setObjectName(_fromUtf8("axisCL"))
        self.gridLayout.addWidget(self.axisCL, 1, 1, 1, 1)
        self.gridLayout_6.addWidget(self.axisGB, 0, 0, 1, 1)
        self.gridGB_2 = QtGui.QGroupBox(self.gridGB)
        self.gridGB_2.setObjectName(_fromUtf8("gridGB_2"))
        self.gridLayout_2 = QtGui.QGridLayout(self.gridGB_2)
        self.gridLayout_2.setObjectName(_fromUtf8("gridLayout_2"))
        self.showCK = QtGui.QCheckBox(self.gridGB_2)
        self.showCK.setObjectName(_fromUtf8("showCK"))
        self.gridLayout_2.addWidget(self.showCK, 0, 0, 1, 2)
        self.gridL = QtGui.QLabel(self.gridGB_2)
        self.gridL.setObjectName(_fromUtf8("gridL"))
        self.gridLayout_2.addWidget(self.gridL, 1, 0, 1, 1)
        self.gridCL = ColorWidget(self.gridGB_2)

        self.gridCL.setObjectName(_fromUtf8("gridCL"))
        self.gridLayout_2.addWidget(self.gridCL, 1, 1, 1, 1)
        self.gridLayout_6.addWidget(self.gridGB_2, 0, 1, 1, 1)
        self.numbersGB = QtGui.QGroupBox(self.gridGB)
        self.numbersGB.setObjectName(_fromUtf8("numbersGB"))
        self.gridLayout_3 = QtGui.QGridLayout(self.numbersGB)
        self.gridLayout_3.setObjectName(_fromUtf8("gridLayout_3"))
        self.numbersCK = QtGui.QCheckBox(self.numbersGB)
        self.numbersCK.setObjectName(_fromUtf8("numbersCK"))
        self.gridLayout_3.addWidget(self.numbersCK, 0, 0, 1, 2)
        self.numbersL = QtGui.QLabel(self.numbersGB)
        self.numbersL.setObjectName(_fromUtf8("numbersL"))
        self.gridLayout_3.addWidget(self.numbersL, 1, 0, 1, 1)
        self.numbersCL = ColorWidget(self.numbersGB)

        self.numbersCL.setObjectName(_fromUtf8("numbersCL"))
        self.gridLayout_3.addWidget(self.numbersCL, 1, 1, 1, 1)
        self.gridLayout_6.addWidget(self.numbersGB, 0, 2, 1, 1)
        self.stepsL = QtGui.QLabel(self.gridGB)
        self.stepsL.setObjectName(_fromUtf8("stepsL"))
        self.gridLayout_6.addWidget(self.stepsL, 1, 0, 1, 1)
        self.setpSB = QtGui.QSpinBox(self.gridGB)
        self.setpSB.setProperty("value", 20)
        self.setpSB.setObjectName(_fromUtf8("setpSB"))
        self.gridLayout_6.addWidget(self.setpSB, 1, 1, 1, 1)
        self.gridLayout_7.addWidget(self.gridGB, 1, 0, 1, 2)
        self.donePB = QtGui.QPushButton(self.settingsGB)
        self.donePB.setObjectName(_fromUtf8("donePB"))
        self.gridLayout_7.addWidget(self.donePB, 2, 0, 1, 2)
        self.verticalLayout.addWidget(self.settingsGB)
        self.setWindowTitle(_translate("Dialog", "Dialog", None))
        self.settingsGB.setTitle(_translate("Dialog", "Settings", None))
        self.bgGB.setTitle(_translate("Dialog", "Background", None))
        self.startBgL.setText(_translate("Dialog", "start color :", None))
        self.endBgL.setText(_translate("Dialog", "end color :", None))
        self.grapGB.setTitle(_translate("Dialog", "Graph", None))
        self.graphL.setText(_translate("Dialog", "color :", None))
        self.gTypeL.setText(_translate("Dialog", "type :", None))
        self.gTypeCB.setItemText(0, _translate("Dialog", "dots", None))
        self.gTypeCB.setItemText(1, _translate("Dialog", "line", None))
        self.thickL.setText(_translate("Dialog", "Thickness :", None))
        self.gridGB.setTitle(_translate("Dialog", "Grid", None))
        self.axisGB.setTitle(_translate("Dialog", "Axis", None))
        self.axisCK.setText(_translate("Dialog", " show", None))
        self.axisL.setText(_translate("Dialog", "color:", None))
        self.gridGB_2.setTitle(_translate("Dialog", "Grid", None))
        self.showCK.setText(_translate("Dialog", " show", None))
        self.gridL.setText(_translate("Dialog", "color:", None))
        self.numbersGB.setTitle(_translate("Dialog", "Numbers", None))
        self.numbersCK.setText(_translate("Dialog", " show", None))
        self.numbersL.setText(_translate("Dialog", "color:", None))
        self.stepsL.setText(_translate("Dialog", "Grid  Step :", None))
        self.donePB.setText(_translate("Dialog", "DONE", None))

        self.showCK.setChecked(1)
        self.axisCK.setChecked(1)
        self.numbersCK.setChecked(1)
        
        
        self.startBgCL.color = self.plotter.startBackgroundColor
        self.endBgCL.color = self.plotter.endBackgroundColor
        
        
        self.startBgCL.colorChangedSignal.connect(self.updateStartBG)
        self.endBgCL.colorChangedSignal.connect(self.updateEndBG)
        self.donePB.clicked.connect(self.close)
        
        
    def updateStartBG(self , r,g,b):
        
        self.plotter.startBackgroundColor = [r,g,b]
        
    def updateEndBG(self , r,g,b):
        
        self.plotter.endBackgroundColor = [r,g,b]

