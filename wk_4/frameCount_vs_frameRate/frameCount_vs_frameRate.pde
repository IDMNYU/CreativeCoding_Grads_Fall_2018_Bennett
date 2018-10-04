
void setup() {
  size(400, 400);
  frameRate(10);
}



void draw() {
  println(frameCount);
  
  background(0);
  if (frameCount % 5 == 0) {
    fill(255,0, 0);
    //frameRate(40);
  }
  else if (frameCount % 3 == 0) {
    fill(255);
  }
  else{
    fill(0, 255, 0);
  }
  ellipse(width/2, height/2, 50, 50);

  //frameRate(3);
}
