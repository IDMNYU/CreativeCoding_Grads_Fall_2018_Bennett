SnowPeople  markus;
SnowPeople sally;    // declaring sally as an object of the SnowPeople Class

void setup() {

  size(800, 800);
  background(0);
  
  markus = new SnowPeople(width/2, height/2); // making a NEW object, from the template/class
  sally = new SnowPeople(100, 100);
}

void draw() {
  background(0);
  //fill(255);
  //noStroke();
  //ellipse(width/2, 150, 50, 60);
  //ellipse(width/2, 270, 50, 100);
  //ellipse(width/2, height/2, 50, 80);
  
  markus.display( color(255));
  sally.display(color(0, 127, 5));
  
  markus.run(10);
}
