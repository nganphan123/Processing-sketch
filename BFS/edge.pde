class edge{
 Node end;
 Node start;
 color fill;
 ArrayList<Node> nodes = new ArrayList();
 public edge(Node s, Node e){
   fill = color(255);
   nodes.add(s);
   nodes.add(e);
 }
 
 public void display(){
   stroke(fill);
   //line(start.x,start.y,end.x,end.y);
   line(nodes.get(0).x,nodes.get(0).y,nodes.get(1).x,nodes.get(1).y);
 }
}
