int [] x = new int [50];
int [] y = new int [50];

void setup(){
size(200,200);
noStroke();
noCursor();
colorMode(HSB,360,100,100);
}

void draw(){
background(255);
for(int i =0; i<x.length-1; i++){
  x[i] = x[i+1];
  y[i] = y[i+1];
}
x[x.length-1] = mouseX;
y[y.length-1] = mouseY;
for (int i=0;i<x.length;i++){
int H = (int)map(i,0,50,0,360);
fill(H,53,93);
ellipse(x[i], y[i], i, i);
}
}
