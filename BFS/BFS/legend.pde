void legend(){
textAlign(CORNER);
textSize(15);
//current node
fill(252,105,139);
ellipse(width/20,18*height/20,10,10);
text("current node",width/12,18*height/20);

//visited node
fill(255,201,134);
ellipse(width/20,18*height/20+20,10,10);
text("visited node",width/12,18*height/20+20);

//current edge
fill(255,0,0);
text("-",width/20-5,18*height/20+40);
text("current edge",width/12,18*height/20+40);
}
