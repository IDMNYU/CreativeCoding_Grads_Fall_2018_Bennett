int x, y;

void setup(){
  size(400, 400);
  background(127);
  x = width/2;
  y = height/2;
}

void draw(){
  float rando = random(0,1);
  
  if(rando < .3){
    x++;
  }
  
  else if (rando < .6){
    x--;
  }
  
  else if(rando < .8){
    y++;
    
  }
  
  else if(rando < 1){
    y--;
  }
  
  stroke(0, 127);
  strokeWeight(1);
  ellipse(x, y, 10, 10);
  
  
  
}
