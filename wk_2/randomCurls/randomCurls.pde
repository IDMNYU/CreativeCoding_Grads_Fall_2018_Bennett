
// declaring globally -- everyone knows about them + can access, if need be
// giving them an intial value
float x = 0;

float y = 0;


float eW;
float eH;

void setup() {
  size(800, 600);   // (width, height)
  background(217, 167, 109);
}

void draw() {
  eW = random(50);
  eH = random(50);
  println(eW);
  
  fill(255, 217, 142, 30);
  stroke(121, 97, 77);
  ellipse(x, y, eW, eH);

  x = x + random(-25, 25);
  y = y + random(-25, 25);

  if ( x < 0) {  // if we go off the screen on the left
    // then wrap around to the other side
    x = width;
  }
  
  if(y < 0){
    y = height;
  }
  
  if(x > width){
    x = 0;
  }
  
  if(y > height){
    y = 0;
  }
  
  
}
