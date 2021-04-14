color fill = color (114,214,22);   
float a,b,m1,m2,n1,n2,n3;
float aa,bb,mm1,mm2,nn1,nn2,nn3;
float size1=140, size2=90, size3=4, size4=140;
float speedX =0, speedY=0;

void setup(){
size(500,500);
colorMode(HSB,360,100,100);
}

void draw() {
  background(0);
  translate(width/2,height/2);
  
  speedX = mouseX/400.0;
  speedY = abs(mouseY);
  stroke(0);
  
  //shape1
  a = 1; b = 1;
  m1 = 13/6.0+speedX; m2 = 13/6.0+speedX;
  n1 = 0.3; n2 = 0.3; n3 = 0.3;
  supershape(a,b,m1,m2,n1,n2,n3, speedY);
  //shape2
  n1 = 0.5+speedX-0.3; n2=1.7; n3=1.7; 
  m1 = 5; m2 = 5;
  supershape(a,b,m1,m2,n1,n2,n3,speedY); 
  supershape(a,b,m1,m2,n1,n2,n3,speedY-50);
  supershape(a,b,m1,m2,n1,n2,n3,speedY-100);
  supershape(a,b,m1,m2,n1,n2,n3,speedY-150);
}

void supershape(float a, float b, float m1, float m2, float n1, float n2, float n3, float scale){
  float theta = 0;
  while(theta<=PI*12){
    stroke(map(theta,0,PI*12,0,360),30,96);
    float r = pow (pow(abs(cos((m1*theta)/4)/a),n2)+pow(abs(sin((m2*theta)/4)/b),n3),-1/n1);
    float x = scale*r*cos(theta);
    float y = scale*r*sin(theta);
    point(x,y);
    theta+=PI/1050;
  }}
