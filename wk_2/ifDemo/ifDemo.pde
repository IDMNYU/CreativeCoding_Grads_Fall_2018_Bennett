//boolean switcher;
color switcher;  // color variable --> holds 2 values

void setup() {
  size(200, 200);
  background(127, 50, 127);
  frameRate(12);
}


void draw() {
   background(127, 50, 127);
  // get a random value
  float rand = random(0, 1);

  // depending on what that value is, flip a switch
  if (rand < .3) {
    switcher = color(207, 232, 108);   //false;  // one = sets the value
  }
  /*
  if(rand < .5){
    fill(0);
    rect(20, 30, 20, 20);
  }
  */
  ///*
  else if  (rand < .5) {
    switcher = color(255, 12, 200);  //true;
  } 
  else if ( rand < .8) {
    switcher = color( 200, 100, 50);
  }
  else {
    switcher = color(0, 0, 0);
  }
  //*/
 
  /*
  // if the switch is true
   if (switcher == true) {  // =='s compares the value
   // use this color
   fill(207, 232, 108);
   }
   
   // if the switcher is false
   else if (switcher == false) {
   // then be this color
   fill(200, 127, 80);
   }
   */



  fill(switcher);
  noStroke();
  ellipse(100, 100, 50, 80);
}
