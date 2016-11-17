from gaussian_jordan_elimination import Matrix

class PolinomialInterpolator(object):
    """
    This class is used to interpolated a polinomial between points, 
    the degree of the polinomial will be number_of_points-1
    """
    def __init__(self,points):
        """
        @param points: [float[2]], list of 2d points to interpolate
        """

        self.points = points
        self.coeffs = []

    def solve(self):
        """
        This method is in charge of building the matrix from the point
        provided and to solve the system of equations to find the 
        polynomial coefficients
        """

        #lets build the matrix
        size = len(self.points)
        matrix= []
        sol_vec = []
        for p in self.points:
            matrix.append(1.0)
            accum = p[0]
            for i in range(size-1):
                matrix.append(accum)    
                accum*=accum
            
            sol_vec.append(p[1])
        
        m = Matrix(matrix,size,size) 
        m.gauss_elim(sol_vec)
        self.coeffs = sol_vec
    

    def evaluate(self,x):
        """
        This function evaluates the polynomial that has been computed
        with the solve method at the given point x
        @param x: float, where we want to validate the polynomial
        """

        accum =x 
        #coeffs[0] is the constant of the polynomial
        value = self.coeffs[0]
        for c in self.coeffs[1:]:
            #multiplying by value of x raised to the correct power
            value += accum*c
            #raising power of x
            accum*=accum
        
        return value


