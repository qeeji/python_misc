import math

class Vector (object):
    '''
    This is a vector class implementation in order to avoid un-needed dependencies
    @code
    test =  Vec([0,2,0])
    test2 = Vec([1,0,0])
    print test.normalize()
    
    print test^test2
    print test.cross(test2)
    print 3*test
    print test - test2
    len(test)
    @endcode
    '''
    def __init__(self, values):
        '''
        This is the constructor
        @param values : float[] , the vector components
        ''' 
        self.values = values
        
    
        
    def __getitem__ (self , index):
        '''
        The procedure used for indexing
        @param index: the index to acces 
        '''
        return self.values[index]
        
        
    def __setitem__ (self , index , value):
        '''
        This procedure allow item set with indexing
        @param index: int , the index to access
        @param value: float , the value To set to given index  
        '''
        self.values[index] = value
        
        
    def __neg__ (self):
        '''
        This procedure returns the negation of the vector
        @return : Vec instance
        '''
        return Vector([ -1.0 * x for x in self.values])
    
    def __eq__ (self , V):
        '''
        This procedure checks if this vector is equal to the given one
        @param V: Vec() , the vector to check agains
        @return  : bool 
        '''
        for i,v in enumerate(V) :
            
            if self.values[i] != v :
                return False
        
        return True
        
    def __radd__(self, other):
        "Hack to allow sum(...) to work with vectors"
        if other == 0:
            return self   
        
    def __len__(self):
        '''
        This procedure returns the length of the vector
        @param return: int
        ''' 
        return len(self.values)
        
    def __add__(self  ,V):
        '''
        This procedure sums the two vectors togheter
        @param V: Vec() the vector to sum
        @return  : Vec()
        '''
        assert len(self) == len(V)
        
        return Vector([self.values[x] + V[x] for x in range(len(self))])
        
    def __sub__(self ,V):
        '''
        This procedure subtracts two vectors
        @param V: Vec() the vector to subtract
        @return  : Vec()
        '''
        return self +(-V)
    
    def __str__(self):
        '''
        Pretty print of the class
        '''
        return str([x for x in self.values])

    def __mult__(self , V):
        '''
        This procedure implements the * operator performing a dot product
        @param V: Vec() , the other vector to use for the computation\
        @return : Vec()
        ''' 
        return self.dot(V)
        
    def dot(self , V):
        '''
        This procedure performs a dot product with the given vector
        @param V: Vec() , the other vector to use for the computation
        @return : Vec() 
        '''
        
        return sum([self.values[x] * V[x] for x in range(len(self))])
        
    
    def __rmul__ (self, scalar):
        '''
        Right multiplication , assuming int or float , performing scalar multiplication
        @param scalar: int/float , scalar value for the operation
        ''' 
        return [ x * scalar for x in self.values]
       
    def __xor__ (self , V):
        
        return self.cross(V)
        
    def cross(self , V):
        '''
        This procedure performs the cross product on the two vectors , NB the two vectors need lenght 3
        @param V: Vec() , the other vector to use for the computation
        @return : Vec() 
        '''
        assert len(self) == 3  and  len(V) == 3
        
        A = self.values
        
        x = (A[1] *V[2]) - (A[2] *V[1])
        y = (A[2] *V[0]) - (A[0] *V[2])
        z = (A[0] *V[1]) - (A[1] *V[0])
        
        
        return Vector([x,y,z])
        
    def length(self):
        '''
        Return the magnitude of the vector
        @return :float
        '''
        return math.sqrt(sum(x*x for x in self.values))
        
        
    def normalize(self):
        '''
        Return the normalized image of  the class
        @return: Vec()
        ''' 
        tempLen = self.length()
        
        return Vector([x/tempLen for x in self.values])
    
    
