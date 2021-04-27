import java.util.*;

//Declare variables
Queue<Node> queue = new LinkedList(); //queue to add visited nodes 
graph g; //graph g with predefined nodes and edges
Node currentNode; //current node that is just popped out of the queue
ArrayList<edge> currentEdges = new ArrayList(); //edges that are incident on the current node
String output=""; // visited node popped out from the queue is then showed in output

void setup(){
  size(600,600);
  frameRate(0.8);
  g = new graph();
  visit(g.nodes.get(0));
  currentNode = g.nodes.get(0);
  strokeWeight(2);  
}

void draw(){
  background(0);
  
  if(currentEdges.size()!=0){
    edge currentedge = currentEdges.remove(0); 
    currentedge.fill = color(255,0,0);
    
    if(currentNode.equals(currentedge.nodes.get(0)))
      visit(currentedge.nodes.get(1));
    else visit(currentedge.nodes.get(0));
    
    currentNode.fill = color(252,105,139);
  }
  else traverse();
  
  legend();
  
  textSize(20);
  fill(255);
  text("Output: ",width/20,height/20);
  text(output,4*width/20,height/20);
    
  for(edge e: g.edges){
    e.display();
  }
  
  queueDisplay();
  
  for(Node n : g.nodes)
    n.display();

}

void traverse(){
  if(queue.size()==0){
    return;
}
  else{
    currentNode.fill = color(255,201,134);
    currentNode = queue.poll();
    output += currentNode.value +" ";
    for(edge e: g.edges){
      if(e.nodes.contains(currentNode)){
      currentEdges.add(e);
      }
     e.fill= color(255);
     }  
  }
}

void visit(Node n){
    if(n.visited)
        return;
    else {
        queue.add(n);
        n.fill = color(255,201,134);
        n.visited = true;
      }
}
