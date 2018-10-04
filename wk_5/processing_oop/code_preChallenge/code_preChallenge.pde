/*
* Take this code, and create a class based off of it.
*
*  Pass parameters to make each *instance* of this class unique.
*
*  Then, create different methods for movement. Each instance of the class
*  should have it's own characteristic movement. Completely unique!! Not
*  simply just a variance in speed, or direction. Get creative here and experiment!
*
*  To take it even further: Make each's movement, have the ability to change
*  based upon input, whether from the keyboard, mouse, or another object. ;)
*
*  Good Luck!
*/

int x, y, r, g, b;
int bigC, littleC;

float max, radSec;

color skin;

void setup() {
  size(400, 400);
  background(0);
  x = width/2;
  y = height/2;

  r = int(random(80, 200));
  g = int(random(100, 255));
  b = int(random(50, 200));

  bigC = 40;
  littleC = 30;
  max = 10;

  skin = color(r, g, b);
}


void draw() {
  // Draw a triangle rotated in the direction of velocity


  stroke(95, 164, 255);
  strokeWeight(2);
  noFill();
  pushMatrix();
  translate(x, y);
  ellipse(0, 0, bigC, bigC); //variable ellipse(location.x, location.y, bigC, bigC); //variable 
  //fill(95, 164, 255);
  fill(skin);
  ellipse(0, 0, littleC, littleC); //variable ellipse(location.x, location.y, bigC, bigC); //variable 
  noFill();
  fill(255, 197, 127, 230);
  noStroke(); 

  radSec = 0;

  //rotate(radians(radSec));  // use this to rotate for time
  //rotate(theta);
  triangle( -9, 0, 0, -40, 9, 0);
  stroke(144, 232, 146);
  line(0, -20, 0, -50);
  popMatrix();
}
