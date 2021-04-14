float Xb, Yb, r, speedX, speedY;    //ball location, size, and speed
float Xp1, Yp1, w, h;                 //paddle location of player 1, wdith and height 
float Xp2, Yp2;     //paddle loc of player 2 
int match =1;

int score1 = 0;
int score2 = 0;

void setup() {
  size(400, 400);

  // initialize ball attributes
  Xb = random(r, width-r);      
  Yb = height/2;                         
  r = 15;
  speedX = int(random(2, 4));   
  speedY = int(random(2, 4));

  // initialize paddle attributes of player 1
  w = 30; 
  h = 8;
  Xp1 = width/2;  
  Yp1 = height - h;
  Xp2 = width/2;  
  Yp2 = h;
  
  // hide mouse cursor
  noCursor();
}

void draw() {  
background(0);

if (match<=3) {              //play as long as it is not game over

// DRAW game elements
    // draw Ball
    fill(255);   noStroke();
    ellipse(Xb, Yb, 2*r, 2*r);
    // draw paddle
    stroke(0, 255, 0);  strokeCap(ROUND);  strokeWeight(h);
    line(Xp1-w, Yp1, Xp1+w, Yp1);
    line(Xp2-w, Yp2, Xp2+w, Yp2);
    // draw score
    fill(255, 0, 0); textAlign(LEFT);  textSize(16);
    pushMatrix();
    translate(0,height);
    rotate(-PI/2);
    text("Player1: " + score1, 5, 15);
    popMatrix();
    pushMatrix();
    translate(width,0);
    rotate(PI/2);
    text("Player2: " + score2, 5, 15);
    popMatrix();

// MOVE game elements
    // move Paddle
    Xp1 = mouseX;
    if(keyPressed)
      if(keyCode==LEFT)
        Xp2=constrain(Xp2-5,0,width);
      else if(keyCode==RIGHT)
        Xp2=constrain(Xp2+5,0,width);
    // move ball 
    Xb += speedX;
    Yb += speedY;

// CHECK for collisions
    if(Xb <= r || Xb >=(width-r)) 
      speedX=-speedX;
    if(Yb<=(r+h))
      if(dist(Xb,Yb,Xp2,Yp2)<(w+r)){
        speedY=-speedY;
        speedY=speedY*1.1;
        speedX=speedX*1.1;
      }
      else{ 
        score1++;
        match++;
        Xb = random(r, width-r);      
        Yb = height/2;   
        }
    if(Yb>=(height-r-h))
      if(dist(Xb,Yb,Xp1,Yp1)<(w+r)){
        speedY=-speedY;
        speedY=speedY*1.1;
        speedX=speedX*1.1;
      }
      else{ 
        score2++;
        match++;
        Xb = random(r, width-r);      
        Yb = height/2;
      }
    
}

//Show score
else {     
    textAlign(CENTER ,CENTER);
    fill(3,0,255,90);
    strokeWeight(1);
    stroke(3,0,255);
    rect((width/2)-150,(height/2)-50,300,100);
    fill(255,255,0);
    textSize(20);
    text("Game Over!",width/2,height/2-20);
    if(score1>score2)
      text("Player 1 won with score "+score1,width/2,height/2+20);
    if(score1<score2)
      text("Player 2 won with score "+score2,width/2,height/2+20);
    if(score1==score2)
      text("Draw",width/2,height/2+20);
      }
}
