int x, y;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  
}


void draw(){
  background(255);
  fill(255, 0, 0);
  
  x = x+ 10;//
  if(x > width){
    x = 0;
  }
  
  fill(124, 200, 7);
  ellipse(x, y, 10, 10);
  
}
