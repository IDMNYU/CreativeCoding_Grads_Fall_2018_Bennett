Monster fred;

void setup() {
  background(255);
  size(800, 800);
  fred = new Monster();
}

void draw() {
  background(255);
  
  /*
  update();
  monsterBody(220, 160);
  head(30, 80);
  //eye();  /// because inside another function
  */
  fred.display(100, 100);
  fred.head(50, 50);
}
