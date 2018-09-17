// time -- % millis()


float randie;
float randX, randY;

void setup() {
  size(300, 300);
  background(105, 94, 232);
}

void draw() {
  randie = random(0, 255);
   randX = random(0, width);
   randY = random(0, height-10);
   
   fill(100, 100, 50);
   rect(randX, randY, 30, 50);
   
   println(randie);
  
}
