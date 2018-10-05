Monster fred;
Monster sally;

void setup() {
  background(255);
  size(800, 800);
  fred = new Monster();
  sally = new Monster();
}

void draw() {
  background(255);
  
  /*
  update();
  monsterBody(220, 160);
  head(30, 80);
  //eye();  /// because inside another function
  */
  fred.display(200, 200);
  fred.head(50, 50);
  
  //sally.display(100, 50);
  //sally.head(50, 25);
}
