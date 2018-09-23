int x, y;

void setup() {
  size(400, 400);
  background(255);
  
  x= width/2;
  y = height/2;
}

void draw() {
  background(255);
  float randie = random(1);

  if (randie < 0.2) {
    x++;
    
  } else if (randie < 0.5) {
    x--;
    
  } else if (randie < 0.7) {
    y++;
    
  } else {
    y--;
  }
  
  println(randie);
  fill(127, 45, 200, 100);
  ellipse(x, y, 10, 10);
}
