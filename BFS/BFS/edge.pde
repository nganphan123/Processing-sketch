class edge{
 color fill;
 ArrayList<Node> nodes = new ArrayList();//store start and end node
 
 public edge(Node s, Node e){
   //constructor
   fill = color(255);
   nodes.add(s);
   nodes.add(e);
 }
 
 public void display(){
   stroke(fill);
   //draw line from starting node to ending node
   line(nodes.get(0).x,nodes.get(0).y,nodes.get(1).x,nodes.get(1).y);
 }
}
