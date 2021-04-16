class Node{
String value;
Boolean visited;
color fill;
float x,y;
public Node(String v, float xx, float yy){
  fill = color(148,227,133);
  value = v;
  visited = false;
  x=xx;
  y=yy;
}
void display(){
  textAlign(CENTER,CENTER);
  fill(fill);
  stroke(255);
  ellipse(x,y,50,50);
  fill(0);
  textSize(20);
  text(value,x,y);
}
}
