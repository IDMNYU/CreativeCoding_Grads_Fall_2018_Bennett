/*
 create a rain drop from Prince
 make the rain drop into a function
 make tons of rain

*/

int y;

void setup(){
  size(400, 400);
  y = 0;
  
}

void draw(){
  background(0);
  /*
  fill(229, 88, 255);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(width/2, 0, 10, 10);
  */
  rainDrop();
}

void rainDrop(){
  
  fill(229, 88, 255);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(width/2, 0, 10, 10);
  
  
}
