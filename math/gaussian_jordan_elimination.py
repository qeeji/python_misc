
class Matrix(object):
    EPSILON = 1.0e-10

    def __init__(self, row_buffer, rows, columns):
        
        self.row_buffer = row_buffer;
        self.rows= rows;
        self.columns = columns;
    
    @classmethod
    def Identity(cls, rows, columns):
        
        buff = [0.0]*(rows*columns)
        col = 0
        for r in range(rows): 
            buff[r*columns+ col] = 1.0
            col +=1
        
        return cls(buff, rows,columns)

    def __str__(self):
        #return str(self.row_buffer)
        off = 0
        out = ""
        for r in range(self.rows):
            for c in range(self.columns):
                out += str(self.row_buffer[(r*self.columns+ c)]) + ", "
            out += "\n"
        return out[:-3]

    def extend_matrix_horizontal(self, mat):

        new_buff =[]
        for r in range(self.rows):
            curr = self.get_row(r)
            ext = mat.get_row(r)
            new_buff += (curr + ext)
        
        self.row_buffer = new_buff
        self.columns += mat.columns
    
    def get_row(self, idx):
        return self.row_buffer[idx*self.columns: idx*self.columns+self.columns]

    def gauss_elim(self,sol_vec):

        for j in range(self.columns):
            #check value is not zero
            piv = self.row_buffer[j+ j*self.columns]
            if abs(piv) < self.EPSILON:
                new_idx = -1
                for sub_i in range(j+1,self.rows):
                    curr = abs(self.row_buffer[sub_i*self.columns + j])
                    if curr > self.EPSILON:
                        new_idx = sub_i
                        break
                if (new_idx == -1):
                    print "found invalid number pivot at index ", j, " and no valid pivot"
                    return

                self.swap_rows(j,new_idx)
                #we also need to swap the solution vector otherwise we have a bug
                tmp = sol_vec[j]
                sol_vec[j] = sol_vec[new_idx]
                sol_vec[new_idx] = tmp

            #looping the rows now to make it an uper triangular matrix
            piv_row = self.get_row(j)
            for i in range(j+1,self.rows):
                #we extract the current row reference by the i index,
                #meaning we are looping the rows below the currend colum
                #diagonal
                curr_row = self.get_row(i) 
                ratio = curr_row[j]/piv_row[j]
                #now that we have the ratio we can subtract the pivot row
                #from the current row
                self.subtract_rows(j,i,ratio, sol_vec)

        #now we back subsitute
        for i in range(self.columns-1,-1,-1):
            #lets substitute the values from the solution vector 
            #back into the matrix
            for sub_c in range(i+1,self.columns):
                #print "sub sol idx",i, " ",sub_c
                sol_vec[i] -= ( self.row_buffer[i*self.columns+sub_c] *sol_vec[sub_c])
            sol_vec[i] /= self.row_buffer[i*self.columns + i] 

    def subtract_rows(self, s_idx, d_idx, ratio, sol_vec):
        curr_row = self.get_row(d_idx) 
        piv_row = self.get_row(s_idx)
        for i in range(self.columns):
            curr_row[i] = curr_row[i] - (piv_row[i] *ratio)
    
        self.set_row(d_idx, curr_row)
        sol_vec[d_idx] = sol_vec[d_idx] - (sol_vec[s_idx]*ratio) 
            
    def set_row(self, idx, row):
        
        for c in range(self.columns):
            self.row_buffer[idx*self.columns+ c] = row[c]
    def swap_rows(self, idx_a, idx_b):
        row_a = self.get_row(idx_a) 
        row_b = self.get_row(idx_b)

        self.set_row(idx_a,row_b)
        self.set_row(idx_b,row_a)
            
if __name__ == "__main__":

    #i = Matrix.Identity(4,4)
    #i.extend_matrix_horizontal(i)
    #print i.row_buffer[0:8]
    #print i.row_buffer[8:16]
    #print i
    #m_buffer = [1.0,3.0,3.0,
    #            5.0,4.0,3.0,
    #            6.0,5.0,2.0]
    m_buffer = [0.0,10.0,-3.0,
                1.0,-4.0,2.0,
                0.0,0.0,2.0]
    b = [34.0,-9.0,4.0]

    m = Matrix(m_buffer,3,3) 
    m.gauss_elim(b)
    #print m
    print b
    #print list(range(2,2))
