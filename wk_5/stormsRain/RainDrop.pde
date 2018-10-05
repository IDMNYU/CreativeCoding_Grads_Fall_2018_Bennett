// data + functionality associated with them

class RainDrop {
  int x;
  int y;
  color cW;
  int speed;

  RainDrop(int xLocal, int yLocal, color cLocal) {  // is my class constructor.
    // called everytime you make a new instance
    y = yLocal;
    cW = cLocal;
    x = xLocal;
    speed = int(random(2, 10));
  }

  void update() {
    y = y + speed;
  }

  void display() { // method. exists within a class

    fill(cW);
    strokeWeight(3);
    stroke(68, 161, 232);
    ellipse(x, y, 10, 10);
  }
}
