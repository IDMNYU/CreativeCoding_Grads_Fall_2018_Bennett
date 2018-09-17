

void setup(){
  size(400, 400);
  
}


void draw(){
  background(0);
  stroke(255);
  strokeWeight(1);
  
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  
  if(mousePressed){
    print("X: ");
    print(mouseX);
    print(" Y: ");
    println(mouseY);
  } // mousePressed
}
