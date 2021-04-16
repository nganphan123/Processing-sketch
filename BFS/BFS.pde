import java.util.*;

Queue<Node> queue = new LinkedList();
graph g;
Node currentNode;
ArrayList<edge> currentEdges = new ArrayList();  

void setup(){
background(0);
size(500,500);
g = new graph();
frameRate(0.9);
textAlign(CENTER,CENTER);
visit(g.nodes.get(0));
currentNode = g.nodes.get(0);
strokeWeight(2);
}

void draw(){
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
println(currentNode.value);
for(edge e: g.edges){
  //if(currentNode.equals(e.start) || currentNode.equals(e.end)){
    if(e.nodes.contains(currentNode)){
    currentEdges.add(e);
    //e.fill= color(255,0,0);
    //if(currentNode.equals(e.start))
    //  visit(e.end);
    //else visit(e.start);
    //currentEdges.add(e);
  }
   //delay(200);
   e.fill= color(255);
}
//for(ArrayList<Node> edge : g.edges)
//    if (edge.contains(currentNode)){
//      int ind = edge.indexOf(currentNode);
//      visit(edge.get(1-ind));
//      //delay(150);
//    }
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
