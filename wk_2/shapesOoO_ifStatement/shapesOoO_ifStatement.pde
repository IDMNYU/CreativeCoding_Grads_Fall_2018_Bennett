
int xLoc;    // declaring at top GLOBAL
int xLocRect;
color rectFill;

int triX, triY;
color triFill;

void setup(){
  size(800, 800);
  background(90, 89, 232);
  xLoc = 200;
  //frameRate(2);
  xLocRect = 0;
  //rectFill = color(13, 255, 31);
}


void draw(){
  //background(90, 89, 232);
  fill(95, 255, 173, 100);
  noStroke();
  ellipse(xLoc + 200, height/2, 50, 100);
  fill(232, 177, 12);
  ellipse(xLoc + 200, 355, 25, 50);
  
  xLoc = xLoc + 5;
  //xLoc = mouseX;
  
  
  println(xLoc);
  
  if(xLoc > width){
    xLoc = -200;
  }
  
  
  if(mouseX < width/2 && mouseY < height/2){
    rectFill = color(0);
  }
  else if (mouseX > width/2 && mouseY < height/2){
    rectFill = color(229, 34, 232);
  }
  else if( mouseX < width/2 && mouseY > height/2){
    rectFill = color(162, 95, 255);
  } // purple color closer
  /*
  else{
    rectFill= color(255);
  }
  */
  
  strokeWeight(2);
  stroke(232, 177, 12);
  fill(rectFill);
  rect(xLocRect, 200, 50, 50);
  
  
  if(mousePressed == true){
    triX = triX + 200;
    triY = triY - 200;
    fill(0);
    ellipse(250, 750, 50, 50);
  }
  if(mousePressed != true){
    //triX = triX - 20;
    //triY = triY + 20;
    triX = 0;
    triY = 0;
  }
  if(mouseX > 200 || mouseY > 400){
    triFill = color(0);
  }
  else{
   triFill = color(255, 157, 13); 
  }
  
  fill(triFill);
  triangle(150 + triX, 700 + triY, 200 + triX, 600 + triY, 250 + triX, 700 + triY);
  
  
  
}
