import java.util.*;

Queue<Node> queue = new LinkedList();
graph g;
Node currentNode;

void setup(){
background(0);
size(500,500);
g = new graph();
frameRate(0.9);
textAlign(CENTER,CENTER);
visit(g.nodes.get(0));
currentNode = g.nodes.get(0);
}

void draw(){
for(int i = 0; i < g.edges.length; i++){
  float x1 = g.edges[i].get(0).x;
  float y1 = g.edges[i].get(0).y;
  float x2 = g.edges[i].get(1).x;
  float y2 = g.edges[i].get(1).y;
  stroke(255,0,0);
  line(x1,y1,x2,y2);
  strokeWeight(2);
}
for(Node n : g.nodes)
  n.display();

if(queue.size()==0){
  return;
}
else{
currentNode.fill = color(255,201,134);
currentNode = queue.poll();
currentNode.fill=0;
println(currentNode.value);
for(ArrayList<Node> edge : g.edges)
    if (edge.contains(currentNode)){
      int ind = edge.indexOf(currentNode);
      visit(edge.get(1-ind));
      //delay(150);
    }
}}

void visit(Node n){
    if(n.visited)
        return;
    else {
        queue.add(n);
        n.fill = color(255,201,134);
        n.visited = true;
      }
}
