bubble [] bubbles = new bubble[250]; //bubbles array
int count = 0; //count big bubbles

void setup(){
  size(400,600);
  //creating 250 bubbles
  for(int i = 0; i < bubbles.length; i++){
    //creating big bubbles
    if(i<=11)
     bubbles[i] = new bubble("big");
    //creating small bubbles
    else bubbles[i] = new bubble("small");
  }
}

void draw(){
  background(0);
  //move and display bubbles
  for(int i =0; i<bubbles.length; i++){
    bubbles[i].move();
    bubbles[i].display();
  }
}
