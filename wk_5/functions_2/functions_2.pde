/*
 create a rain drop from Prince
 make the rain drop into a function
 make tons of rain

*/

int y;
color cW;

void setup(){
  size(400, 400);
  y = 0;
  cW = color(255, 255, 255);
  
}

void draw(){
  background(0);
  /*
  fill(229, 88, 255);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(width/2, 0, 10, 10);
  */
  y++;
  rainDrop(width/2, y, cW);
  
  color nother = color(299, 88, 255);
  y = y+ 10;
  rainDrop(width-30, y, nother);
  y = 1;
}

void rainDrop(int x_, int y_, color inner){
  
  fill(inner);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(x_, y_, 10, 10);
  
  
}
