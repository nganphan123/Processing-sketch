class edge{
 Node end;
 Node start;
 color fill;
 public edge(Node s, Node e){
   start = s;
   end = e;
 }
 
 public void display(){
   stroke(fill);
   line(start.x,start.y,end.x,end.y);
 }
}
