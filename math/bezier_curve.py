'''
This module contains a lot procedure to work on curves
'''

import math
from  vector import Vector

class BezierCurve(object) :
	'''
	@brief Bezier Curve implementation

	This class is a generic curve implementation that lets you perform several operation 
	on the curve itself
	'''
	def __init__(self  ,controlPoints = None ) :
		'''
		The initializer
		@type controlPoints : Vector[]
		@param controlPoints : the points defining the bezier
		'''
		self.__degree = None
		self.__knots = None
		self.__controlPointsSize = 0
		self.controlPoints = controlPoints

	@property
	def controlPoints(self):
	    '''
	    Getter function for the control points
	    @return Vector[]
	    ''' 
	    return self.__controlPoints

	@controlPoints.setter
	def controlPoints(self, value):
		'''
		Setter function for the control points
		@param value : the value you want to set
		'''

		#Check if the value is different then None
		if not value :
			return
		#If type is a list and the resulting curve will be at least degreee 2 proceed
		if type(value).__name__ == 'list' and len(value) >3 :
			#Set control points
			self.__controlPoints = value
			#Set the degree
			self.__degree = len(value) -1 
			#Set number of control points
			self.__controlPointsSize = len(self.__controlPoints)


	    
	

	def berstainPolinomial(self , param = 0.5 , index =0 ) :
		'''
		This function compute the berstain polinomial for the given control point at given parameter
		along the curve
		@type param : float
		@param param : At what value along the curve to sample
		@type index : Int 
		@param index : what control point to use for the computation of the polinomial
		@return:float
		'''

		#Compute the binomial part
		binomial = (math.factorial(self.__degree))/(math.factorial(index) * math.factorial(self.__degree -index))
		#Compute the basis
		basis = binomial*param**index*(1-param)**(self.__degree -index)
		return basis


	def derivative (self ,param ,  index ):
		'''
		This function computes the derivative at a position along the curve for the given control point
		@type param : float
		@param param : At what value along the curve to sample
		@type index : Int 
		@param index : what control point to use for the computation of the polinomial
		@return : float
		'''

		#Compute the derivative multipliare for the polinomial
		derMultiplier = (index - (self.__degree*param))/(param*(1-param))
		return derMultiplier*berstainPolinomial(self.__degree, param , index)

	def tangentOnCurve ( self, param , normalize = 0) :
		'''
		This function computes the tangent at the given parameter along the curve
		@type param : float
		@param param : At what value along the curve to sample
		@type normalize : bool
		@param normalize : whether or not to normalize the output tangent
		@return Vector
		'''
  		pos = Vector([0,0,0]);
		for i in range(self.__controlPointsSize):
			pos +=  self.derivative(self.__degree, param ,i) * self.__controlPoints[i];
		
		if normalize == 1 :
			return pos.normalize()
		else :
			return pos

	def pointOnCurve( self  , param):
		'''
		This function computes a point on the curve at the given parameter
		@type param : float
		@param param : The u value along the curve
		@return Vector
		'''
		pos = Vector([0,0,0])
		for i in range(self.__degree+1) :
			pos +=  self.berstainPolinomial( param ,i) * self.__controlPoints[i]
		return pos




class BSplineCurve(object) :
	'''
	@brief BSpline  Curve implementation

	This class is a generic b-spline  curve implementation that lets you perform several operation 
	on the curve itself
	'''
	def __init__(self  ,controlPoints = None , degree = 3  ) :
		'''
		The initializer
		@type controlPoints : Vector[]
		@param controlPoints : the points defining the bezier
		'''
		self.__degree = None
		self.__controlPointsSize = 0
		self.knots = None
		self.degree = degree
		self.controlPoints = controlPoints




	@property
	def controlPoints(self):
	    '''
	    Getter function for the control points
	    @return Vector[]
	    ''' 
	    return self.__controlPoints

	@controlPoints.setter
	def controlPoints(self, value):
		'''
		Setter function for the control points
		@param value : the value you want to set
		'''

		#Check if the value is different then None
		if not value :
			return
		#If type is a list and the resulting curve will be at least degreee 2 proceed
		if type(value).__name__ == 'list' and len(value) >3 :
			#Set control points
			self.__controlPoints = value
			#Set number of control points
			self.__controlPointsSize = len(self.__controlPoints)

			self.computeUniformKnots()

	@property
	def degree(self):
		'''
		Getter function for the degree
		@return int
		'''
		return self.__degree
	@degree.setter
	def degree(self, value):
		'''
		Setter function for the degree :
		'''
		if value <2 :
			raise ValueError ("BSplineCurve degree : value needs to be greather or equal than 2") 
			return

		self.__degree = value
		self.computeUniformKnots()


	def computeUniformKnots(self):
		'''
		This function computes the knots for the curve
		'''
		counter = 0
		knotsSize = self.degree + self.__controlPointsSize +1;
		self.knots = []
		for i in range (knotsSize) :
	  

	  		#degree +1 at start of 0 knonts to clamp the curve
			if (i <=self.degree) : 
				self.knots.append(0)

			#degree +1 at the end of highest knots value to clamp the curve
			elif (i > knotsSize-self.degree-1) :

			
				self.knots.append(counter)

			#then gradual increase
			else:  
				counter +=1
				self.knots.append(counter)


 
	def findSpan(self , param  ) :
		'''
		This procedure finds the correct span for the given parameter
		@type param : float
		@param param : the parameter used to find the span
		@return : int , span index in the knots array
		'''
		n = len(self.knots) - self.degree - 2;	
		if (param == self.knots[n+1]):
			return n;
		

		#using bisect algorithm to find correct span
		low = self.degree;
		high = n+1;
		mid = (low + high) / 2;
		while (param < self.knots[mid] or param >= self.knots[mid+1]):
			if (param < self.knots[mid]):
				high = mid;
			else:
				low = mid;
			mid = (low + high) / 2;

		return mid;

	def basis(self , order =4, index = 0,param = 0.5  ):
		'''
		This function is used to compute the basis for the bspline curve,
		it shouldnet be used from the average user, also this funciton is recursive
		that s why the order needs to be passed as argument
		@type order : int
		@param order : the order is given by degree + 1
		@type param : float
		@param param : the parameter used to compute the basis
		@return : float
		'''
		if order == 1 :
			if self.knots[index] <= param < self.knots[index+1] :
				return 1
			else :
				return 0

		leftDenom = (self.knots[index + order -1] - self.knots[index])
		if leftDenom == 0 :
			left = 0
		else :
			left = (param - self.knots[index]) / leftDenom 
		leftBasis = self.basis(order -1,index,param)
		
		rightDenom =  self.knots[index + order ] - self.knots [index +1]
		if rightDenom == 0 :
			right = 0
		else :
			right = (self.knots[index + order] - param ) / rightDenom
		rightBasis = self.basis(order -1,index +1,param)

		return left * leftBasis + right * rightBasis;


	def pointOnCurve (self ,   param) :
		'''
		This function computes a point on the curve at the given parameter :
		@type param : float
		@param param : the parameter used to compute the point
		@return Vector
		'''

		#COmpute the order of the curve
		order = self.degree + 1
		pos = Vector([0,0,0])

		for i,c in enumerate(cp) :
			#For each point compute hte basis meaning the influence on the point 
			#and multiply it for the control point 
			bas = self.basis(order ,i, param)
			pos += bas * self.controlPoints[i]

		return pos



	def tangentOnCurve(self ,param = 0.5 ,normalize = 1  ):
		'''
		This function computes the tangent at the given parameter along the curve
		@type param : float
		@param param : At what value along the curve to sample
		@type normalize : bool
		@param normalize : whether or not to normalize the output tangent
		@return Vector
		'''
		
		order = self.degree + 1
		pos = Vector([0,0,0])

		#methodA
		for i in range(len(cp)-1) :

			#First compute the basis
			basis = bsplineBasis(self.knots ,i+1,order-1 , param)
			#Then compute the Q parameter which is the derivative multiplier based on the -1 +1 control points
			q = Vector((degree /(self.knots[i+degree +1] - self.knots[i+1])) * (self.controlPoints[i+1] - self.controlPoints[i]))
			
			pos+= (basis*q)

		if normalize == 1 :
			return pos.normalize()
		else :
			return pos



##################### EXTRA ALGORITHM FOR BSPLINE DERIVATIVE #####################################
# def bSpineBasisDerivative ( knots , span , order =4,param = 0.5  ):

# 	degree = order -1
# 	if degree == 1 :
# 		return 1
# 	leftDenom = (knots[span+degree-1] - knots[span])
# 	if leftDenom == 0 :
# 		left = 0
# 	else :
# 		left = (bsplineBasis(knots , span , order-1 ,param   )  + (param - knots[span] *bSpineBasisDerivative(knots , span , order-1 ,param  )))/leftDenom

# 	rightDenom = (knots[span+degree] - knots[span+1])
# 	if rightDenom == 0 :
# 		right = 0
# 	else :

# 		right =  ((knots[span +degree ] - param) *bSpineBasisDerivative(knots , span+1 , order-1 ,param  ) - bsplineBasis(knots , span+1 , order-1 ,param   )) / rightDenom	

# 	return left + right


# then use this to compute the derivative

#methodB more complex and less accurate
# for i,c in enumerate(cp) :

# 	bas = bSpineBasisDerivative(knots ,i,order , param)
# 	pos += bas * cp[i]

# return pos.normalize()




def main():

	knots = [0,0.0, 0.0, 0.0, 1.0, 2.0, 3.0, 3.0, 3.0,3]
	cp = [
			Vector([-5,0,0]),
			Vector([-3,0,-5]),
			Vector([3,0,-5]),
			Vector([5,0,0]),
			Vector([5,0,5]),
			Vector([10,0,5])
	]


	bz = BezierCurve( cp )
	bs = BSplineCurve(cp , 3)
	print bs.knots
	print bs.findSpan(0.5)
	print bs.basis(4 , 2,0.5)
	print bs.pointOnCurve(0.5)
# print pointOnBSpline(knots , cp , 4 ,0.5)
# print bsplineDerivative(knots , cp , 4 ,0.5)
