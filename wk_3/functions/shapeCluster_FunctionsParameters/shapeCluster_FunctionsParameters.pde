int grn = 0;
int slate = 0;
int ltgrn = 0;

int step = 0;
int stepY = 0;


void setup() {
  size(400, 400);
  background(88, 170, 232);
  grn = color(51, 255, 142);
  slate = color(120, 216, 232);
  ltgrn = color(174, 255, 120);
}

void draw() {
  background(88, 170, 232);
  /*
  var x = 0;
  var y = 0;

  noStroke();
  fill(51, 255, 142);
  ellipse(40 + x, 40 + y, 35, 35);
  fill(193, 154, 255);
  stroke(229, 206, 76);
  strokeWeight(1);
  ellipse(35 + x, 35 + y, 10, 10);
  ellipse(50 + x, 45 + y, 10, 10);
  ellipse(48 + x, 35 + y, 5, 5);
  */

  bump(step, stepY, grn, true);
  // 100 is known as x; 200 is known as y:
  bump(100, 200, slate, false);
  
  bump(200, 100, ltgrn, true);
  
  if((keyPressed) &&( key == 'w')){
     stepY += 10;
    println("yes");
    if(stepY > height){
      stepY = 0;
    }
  }
  
}

void bump(int x, int y, color clr, boolean which) { // need to pass parameters because i've defined it as such here
  noStroke();
  fill(clr);
  ellipse(40 + x, 40 + y, 35, 35);
  fill(193, 154, 255);
  stroke(229, 206, 76);
  strokeWeight(1);
  ellipse(35 + x, 35 + y, 10, 10);
  ellipse(50 + x, 45 + y, 10, 10);
  ellipse(48 + x, 35 + y, 5, 5);
  
  println(which);
}

void mouseMoved(){
  step += 5;
    
    if(step > width){
      step = -100;
    }
}

/*
function keyTyped(){

  if ( key === 'a'){
     stepY += 10;
    if(stepY > height){
      stepY = 0;
    }
  }

}

*/
