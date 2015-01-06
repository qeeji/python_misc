from dynamicNode import DynamicNode
import dynamicNode
reload(dynamicNode)
import pydot

class QFTree(object):
    '''
    This procedure is an implementation of the quick find tree
    '''
    def __init__(self ,treeName = "tree"  ):
        '''
        This is the constructor 
        @param treeName: str , the name you want to do at the tree
        ''' 
        self.treeName = treeName
        
        self.__id = []
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
        
       
        ref = self.__id[A]
        self.indexToNode[A].connectedTo.append(self.indexToNode[B])
        self.indexToNode[B].connectedTo.append(self.indexToNode[A])
        
        for i in range(self.getTreeSize()) :
            if self.__id[i] == ref :
                self.__id[i] =  self.__id[B]
                
                
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
        
        return self.__id[A] == self.__id[B]
        
    
    def __str__(self):
        return str(self.__id)
    
    def drawTree(self , graphName = "graph"):
        '''
        This procedure renders out a png of the tree
        @param graphName: str , the name for the png
        ''' 
        graph = pydot.Dot(graph_type='graph')
        
        processedEdges = []
        for i in self.indexToNode :
            node = self.indexToNode[i]
            if node.connectedTo == [] :
                
                point = pydot.Node(node.name)
                graph.add_node(point)
            else :
                for n in node.connectedTo :
                    if not str(node.name + n.name) in processedEdges and not str(n.name + node.name  ) in processedEdges :
                        edge = pydot.Edge(node.name , n.name)
                        graph.add_edge(edge)
                        processedEdges.append(str(node.name + n.name))

        graph.write_png(self.path + '/' + graphName + '.png')

def test():
    qft = QFTree()
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
    qft = QFTree()
    for i in range(10) :
        qft.addNode() 
    
    qft.union(4,3)
    qft.union(3,8)
    qft.union(6,5)
    qft.union(9,4)
    qft.union(2,1)
    qft.union(5,0)
    qft.union(7,2)
    qft.union(6,1)
    qft.union(9,1)
    print qft.connected(4, 8)
    qft.drawTree()
    

def hw1():
    qft = QFTree()
    for i in range(10) :
        qft.addNode()
#     9-0 3-5 1-8 9-1 5-7 1-3 
    for i in [(9,0),(3,5),(1,8),(9,1),(5,7),(1,3)] :
        qft.union(i[0],i[1])
        
    print qft

hw1()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        
        
        
        
    
    
    
