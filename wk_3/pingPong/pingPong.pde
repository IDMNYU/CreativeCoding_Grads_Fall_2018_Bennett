int xLoc, yLoc;
int increment;

void setup(){
  size(300, 300);
  background(0);
  
  xLoc = 50;
  yLoc = 50;
  
  increment = 10;
}



void draw(){
  background(0);
  fill(255, 0, 0);
  ellipse(xLoc, yLoc, 50, 50);
  
  xLoc = xLoc + increment;
  yLoc += increment;  // yLoc = yLoc + 10;   yLoc++ // <-- just increase by 1
  
  if(xLoc > width){
   increment = -10;
  }
  
  if(xLoc < 0){
    //increment+=10;
    increment = 10;
  }
  
}
