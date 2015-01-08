from dynamicNode import DynamicNode
import dynamicNode
reload(dynamicNode)
import pydot
###################
#DynamicNode class got lost, but you should be able still to understand the overall code,
# for what I can recall the node was nothing more than a data holder , no special method
#added to it, so by the code you should be able to reconstruct it if needed, or I will do if
#i will get back on this topic
####################

class WUFTree(object):
    '''
    This procedure is an implementation of the weighted union find tree
    '''
    def __init__(self ,treeName = "tree"  ):
        '''
        This is the constructor 
        @param treeName: str , the name you want to do at the tree
        ''' 
        self.treeName = treeName
        
        self.__id = []
        self.__sizes = []
        self.indexToNode= {}
        self.nameToIndex = {} 
        self.path = __file__.rsplit("\\",1)[0].replace("\\","/")
        
    def addNode(self, nodeName = None):
        '''
        This procedure adds a node to the tree
        @param nodeName: str , the nome of the node , if not provide will be auto-generated 
        '''
        index = self.getTreeSize()
        self.__id.append(index)
        self.__sizes.append(1)
        if not nodeName :
            nodeName = "node" + str(index)
        
        node = DynamicNode(index , nodeName)
        self.indexToNode[index] = node
        self.nameToIndex[nodeName] = index
        
    def getTreeSize(self):
        '''
        This procedure returns the size of the tree
        @return: int
        '''
        return len(self.__id)    
    
    def getNodeName(self,index):
        '''
        This procedure retuns the name of a node given the index
        @param index: int , the index of the node 
        @return str
        '''
        if index in self.indexToName :
            return self.indexToName[index]
        
        else :
            raise RuntimeError("The index specified is not in the tree")
        
    
    def union(self, A , B):
        '''
        This procedure connects two nodes
        @param A: str, int , the name or index of the node  
        @param B: str, int , the name or index of the node
        '''
        if type(A).__name__ == "str" :
            A = self.nameToIndex[A]
        if type(B).__name__ == "str" :
            B = self.nameToIndex[B]
               
        

        aIdx = self.root(A)
        bIdx = self.root(B)

        sA = self.__sizes[aIdx]
        sB = self.__sizes[bIdx]
        
        if sA >= sB :
            self.__id[bIdx] = aIdx
            self.__sizes[aIdx] +=sB
            self.indexToNode[aIdx].connectedTo.append(self.indexToNode[bIdx])
            
        else :
            self.__id[aIdx] = bIdx
            self.__sizes[bIdx] +=sA
            self.indexToNode[bIdx].connectedTo.append(self.indexToNode[aIdx])
        
    def connected(self , A , B ):
        '''
        This procedure checks if two nodes are connected
        @param A: str, int , the first node for the check
        @param B: str , int , the second node for the check
        @return: bool   
        '''
        if type(A).__name__ == "str" :
            A = self.nameToIndex[A]
        if type(B).__name__ == "str" :
            B = self.nameToIndex[B]
        
        return self.root(A) == self.root(B)
        
    
    def __str__(self):
        return str(self.__id)
    
    def root(self,node):
        '''
        This procedure returns the root of a node
        '''
        if type(node).__name__ == "str" :
            node = self.nameToIndex[node]
        
        
        go = 1
        root = node 
        while go :
            
            index = self.__id[root]
            if index != root :
                root = index
            else :
                go = 0
                
        return root
                
            
        
    
    def drawTree(self , graphName = "graph"):
        '''
        This procedure renders out a png of the tree
        @param graphName: str , the name for the png
        ''' 
        
        self.__processedEdges = []
        self.__graph = pydot.Dot(graph_type='digraph')

        roots = []
        for i in self.indexToNode :
            r = self.root(i)
            if not self.indexToNode[r] in roots :
                roots.append(self.indexToNode[r])
                
        for r in roots :
            self.__drawNode(r)
        
        
        self.__graph.write_png(self.path + '/' + graphName + '.png')
        print "----> Graph saved in :  " + self.path + '/' + graphName + '.png'
    
    
    def __drawNode(self ,A):
        '''
        This is the recursive routine used to draw the graph'
        @param A:  
        '''
        
        if A.connectedTo == [] :
            point = pydot.Node(A.name)
            self.__graph.add_node(point)
        else :
            for c in A.connectedTo :
                if not str(A.name + c.name) in self.__processedEdges and not str(c.name + A.name  ) in self.__processedEdges :
                    edge = pydot.Edge(A.name , c.name)
                    self.__processedEdges.append(str(A.name + c.name))
                    self.__graph.add_edge(edge)
                    self.__drawNode(c)
            
        

def test():
    qft = WUFTree()
    print qft.getTreeSize()
    qft.addNode("A")
    qft.addNode("B")
    qft.addNode("C")
    print qft.getTreeSize()
    print qft
    qft.union("A","C")
    qft.union("B","C")
    qft.drawTree()
    
def test2():
    qft = WUFTree()
    for i in range(10) :
        qft.addNode()
    counter = 1 
    for i in [(4,3),(3,8),(6,5),(9,4),(2,1),(5,0),(7,2),(6,1),(9,1)] :
        qft.union(i[0],i[1])
        qft.drawTree('weightedGraph' + str(counter))
        counter += 1

def convertString(myStr):
    
    temp = myStr.split(" ")
    final = []
    for t in temp:
        temp2 = t.split("-")
        final.append((int(temp2[0]) , int(temp2[1])))
    
    return final

def hw2():
    qft = WUFTree()
    for i in range(10) :
        qft.addNode()
	# 1-3 0-4 9-5 1-7 6-2 0-3 2-5 4-2 6-8  
 
    for i in convertString(("1-3 0-4 9-5 1-7 6-2 0-3 2-5 4-2 6-8")) :
        qft.union(i[0],i[1])

    



    
    
    
    
    
    
    
    
    
        
        
        
        
    
    
    
