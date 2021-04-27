void queueDisplay(){
  //display all nodes in the queue
  stroke(255);
  fill(255);
  text("Queue",6*width/20,18*height/20);
  int i = 0;
  for(Node n : queue){
    text(n.value,7*width/20+55 + i*20,18*height/20+20);
    i++;}
  noFill();
  rect(7*width/20+50,18*height/20,300,30);
}
