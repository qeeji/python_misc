import math
from maya.api import OpenMaya
from maya import cmds

def test():
    print "test"
    p0 = OpenMaya.MVector([0,0,0]) 
    p1 = OpenMaya.MVector([1,1,1])
    p2 = OpenMaya.MVector([2,0,0])
    p3 = OpenMaya.MVector([3,1,0])

    t0 = 0
    t1 = 0.25 
    t2 = 0.5
    t3 = 1 
    t = 0.5

    samples =20
    step = 0.25/float(samples-1)
    for i in range(samples):
        t= 0.25 + step *i
        A1 = p0*((t1 - t)/(t1-t0)) + p1 * ((t - t0)/(t1-t0))
        A2 = p1*((t2 - t)/(t2-t1)) + p2 * ((t - t1)/(t2-t1))
        A3 = p2*((t3 - t)/(t3-t2)) + p3 * ((t - t2)/(t3-t2))

        B1 = A1*((t2 - t)/(t2-t0)) + A2 * ((t - t0)/(t2-t0))
        B2 = A2*((t3 - t)/(t3-t1)) + A3 * ((t - t1)/(t3-t1))

        C = B1*((t2 - t)/(t2-t1)) + B2 * ((t - t1)/(t2-t1))
        
        l = cmds.spaceLocator()[0]
        cmds.setAttr(l + '.t', *C)
        cmds.setAttr(l + '.localScale', 0.1,0.1,0.1)

