int y;
int x;
int increment;
boolean goingUp;

void setup() {
  size(400, 400);
  background(0);
  y = 0;
  increment = 2;
  x = width/2;

  goingUp = false;
}


void draw() {
  background(0);
  // draw an ellipse:
  fill(255);
  ellipse(x, y, 20, 20);
  // make the ellipse travel downwards:
  //y = y + 5;//y++;
  y = y + increment;
  // if that ellipse is at bottom:
  if ((y > height) && (goingUp == false)) {
    // go up
    //y = y - 1; //y--;
    increment = increment * -1;
    goingUp = true;
  }
  //println(y);
  // if that ellipse is at the center
  //if(y == height/2){
  if ( goingUp == true && y < height/2) {
    println("yippee");
    //fill(255, 0, 0);
    x = x + 5;
    // go to the right
    //goingUp = false;  // reset booleans
  }
}
