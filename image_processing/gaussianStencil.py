import math
from PIL import Image
import numpy as np
class GaussianKernel(object):
    def __init__(self, sigma, normalize =True):
        """
        This is the constructor which just stores the initial data
        @param sigma: float, the sigma defines the standard deviation and is also used to 
                      calculate the given radius of the stancil
        @param normalize: bool, wheter or not to normalize the stancil weights
        """
        #storing data        
        self.sigma = float(sigma)
        self.normalize = normalize
        #computing the radius of the kernel based on the size of sigma
        self.radius = int(sigma)*2 + 1

        #make sure the resulting radius is actually an odd number (makes life easier)
        if (self.radius %2 == 0):
            self.radius += 1

    def generate(self):

        #allocating the stencil
        self.stencil = [ [0 for c in range(self.radius)] for r in range (self.radius)]

        #finding central point of the image
        self.centerX = (self.radius//2) 
        self.centerY = (self.radius//2)

        #this is the constant part that will be multiplied by the exponential on a per
        #pixel basis
        firstArgument = 1.0/(2.0 * math.pi*(self.sigma**2))

        #total weight sum used for the normalization
        total = 0.0
        #looping the stancil
        for r in range(self.radius):
            for c in range(self.radius):
                #computing the relative coordinte positon from the center of the stancil
                localX = float(r - self.centerX)
                localY = float(c - self.centerY)

                #computing the exponential part of the formula
                toExp = -((localX*localX) + (localY*localY))/(2.0 * self.sigma*self.sigma)
                #final result
                res = firstArgument *  math.exp(toExp)
                #storing the result and updating the total
                self.stencil[r][c] = res
                total +=res

        #if needed normalize the result
        if (self.normalize == True) :
            for r in range(self.radius):
                for c in range(self.radius):
                    self.stencil[r][c] /= total
    

    def log(self):
        """
        This function prints out the computed stancil
        """
        for r in range(self.radius):
            toPrint = ""
            for c in range(self.radius):
                toPrint += str(round(self.stencil[r][c],5))
                toPrint += "\t" 

            print toPrint

    def toImage(self, path, mult=1.0):
        """
        This function will save as a grayscale image the generated stencil,
        it will also scale the image to a 100x100 just to make it easier to see.
        @param path: str, where to save the image
        @param mult: float, a multiplier of the map in case the sigma is big and is hard to see
        """
        #converting data in a numpy array
        #generating the array
        data = np.zeros( (self.radius,self.radius,3), dtype=np.uint8)
        #feeding the array data
        for r in range(self.radius):
            for c in range(self.radius):
                data[r,c] = self.stencil[r][c] * 255.0 * float(mult)
        #creating the image
        img = Image.fromarray(data, 'RGB')
        #scaling the imgae
        img = img.resize((100,100))
        #saving the image
        img.save(path)


#test function
def main():
    sigma = 10
    stencil = GaussianKernel(sigma)
    stencil.generate()
    stencil.log()
    stencil.toImage("D:/gaussStencil.png",sigma*15)
