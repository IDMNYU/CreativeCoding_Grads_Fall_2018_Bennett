/*
 create a rain drop from Prince
 make the rain drop into a function
 make tons of rain

*/

//int y;
//color cW;

RainDrop r1;  // making a complex dataType
RainDrop r2;

RainDrop[] storm = new RainDrop[50];

void setup(){
  size(400, 400);
  //y = 0;
  //cW = color(255, 255, 255);
  
  r1 = new RainDrop(width/2, 0, color(255, 255, 255));  // running class constructor
  r2 = new RainDrop( 300, 0, color(299, 88, 255));
  println(storm.length);
  for(int i = 0; i < storm.length; i++){
    int randX = int(random(0, width));
    int r = int(random(100, 200));
    int g = int(random(50, 100));
    int b = int(random(175, 255));
    color surface = color(r, g, b);  // store those rando values as a color
    RainDrop temp = new RainDrop(randX, 0, surface); // create a new instance with that info
    storm[i] = temp; // store the new drop in our array
  }
  
}

void draw(){
  //noLoop();
  background(0);
  /*
  fill(229, 88, 255);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(width/2, 0, 10, 10);
  */
  /*
  y++;
  rainDrop(width/2, y, cW);
  
  color nother = color(299, 88, 255);
  y = y+ 10;
  rainDrop(width-30, y, nother);
  y = 1;
  */
 // println(r1.speed);
 // println(r1.x);
  r1.update();  // dot function = run that method associated within that class
  r1.display();
 // println(r2.speed);
  r2.update();
  r2.display();
  ///*
  for(int i = 0; i< storm.length; i++){
    RainDrop temp = storm[i];
    temp.update();
    temp.display();
  } // end for loop
  //*/
}

/*
void rainDrop(int x_, int y_, color inner){
  
  fill(inner);
  strokeWeight(3);
  stroke(68, 161, 232);
  ellipse(x_, y_, 10, 10);
  
  
}
*/
