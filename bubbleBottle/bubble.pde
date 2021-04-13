class bubble{
  float x,y,radius,speedY;
  
  public bubble(String t){
    x = random(0,width);
    y = random(height+50,height+750);
    if(t.equals("big"))
      radius = random(20,30);
    else radius = random(1,10);
    speedY = -10.0/radius;
  }
  
  void move(){
    x += random(-0.8,0.8);
    y += speedY;
    if(y<-10) {
      y = random(height+50,height+750);
    }
  }  
  
  void display(){
    strokeWeight(2);
    stroke(255);
    fill(255,80);
    ellipse(x,y,radius,radius);
  }
}
