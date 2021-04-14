float x, y, r;           // ball location and size
float speedX=0, speedY=0;     // speed of ball
float xt, yt, rt;        // target location and size
int score = 0;                // keep score
PImage tileB, tileG, hole, ball;
int w = 128;

void setup(){
  size(512,512);
  textSize(14);
  //ball initially at sketch center
  x = width/2;                
  y = height/2;
  //target initially at random location within the sketch
  xt = random(rt, width-rt);
  yt = random(rt, height-rt);
  //load background tile
  tileB=loadImage("tileB.png");
  tileG=loadImage("tileG.png");
  //load hole image
  hole=loadImage("hole.png");
  //load ball image
  ball=loadImage("ball.png");
  r=ball.width/2;
  rt=hole.width/2;
}

void draw(){
  imageMode(CORNERS);
  
  //draw tiles
  for(int i =0; i<4; i++)
    for(int j =0; j<4; j++)
      if(i%2==0) image(tileB,j*w,i*w);
      else image(tileG,j*w,i*w);
  //draw score
  fill(255,0,0);
  textSize(25);
  text("Score: " + score, 5, 20);
  
  //draw target
  imageMode(CENTER);
  image(hole,xt,yt);
  
  //draw ball
  image(ball,x,y);
  
  //move ball 
  x += speedX;
  y += speedY;
  
  //if ball reaches any edge
  if(x >= (width-r) || x <= r) speedX=-speedX;
  if(y >= (height-r) || y <= r) speedY=-speedY;
  
  //detect collision of ball and hole
  if((dist(x,y,xt,yt)+r)<=rt) {
    score++;
    xt = random(rt, width-rt);
    yt = random(rt, height-rt);
  }
  
  saveFrame("output/game-###.png");
}

void keyPressed(){
  //moving the ball with arrow keys
  if(keyCode==UP && speedY>-5)
    speedY--;
  else if(keyCode==DOWN && speedY<5)
    speedY++;
  if(keyCode==LEFT && speedX>-5)
    speedX--;
  else if(keyCode==RIGHT && speedX<5)
    speedX++;
  if(keyCode ==' '){
    x=width/2;
    y=height/2;
  }
}
