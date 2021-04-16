import java.util.*;

Queue<Node> queue = new LinkedList();
graph g;
Node currentNode;
ArrayList<edge> currentEdges = new ArrayList();  
String output="";

void setup(){
size(600,600);
g = new graph();
frameRate(0.8);
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
  
for(edge e: g.edges){
  e.display();
}

queueDisplay();
  
legend();

for(Node n : g.nodes)
  n.display();

fill(255);
text("Output: ",width/20,height/20);

}

void traverse(){
if(queue.size()==0){
  return;
}
else{
currentNode.fill = color(255,201,134);
currentNode = queue.poll();
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
