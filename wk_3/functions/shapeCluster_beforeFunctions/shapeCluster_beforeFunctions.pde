int grn = 0;
int slate = 0;
int ltgrn = 0;

int step = 0;
int stepY = 0;

int blueLoc = 30;
int purpleLoc = 0;

void setup() {
  size(400, 400);
  background(88, 170, 232);
  grn = color(51, 255, 142);
  slate = color(120, 216, 232);
  ltgrn = color(174, 255, 120);
}

void draw() {
  background(88, 170, 232);
  cluster(blueLoc, 100, color(129, 30, 200));
  cluster(purpleLoc, 0, color(0, 200, 255));
  cluster(270, 109, color(0));

  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);

  if (mousePressed) {
    print("X: ");
    print(mouseX);
    print(" Y: ");
    println(mouseY);
  } // mousePressed
}


void cluster(int x, int y, color skin) {

  //int x = 0;
  //int y = 0;

  noStroke();
  //fill(51, 255, 142);
  fill(skin);
  ellipse(40 + x, 40 + y, 35, 35);
  fill(193, 154, 255);
  stroke(229, 206, 76);
  strokeWeight(1);
  ellipse(35 + x, 35 + y, 10, 10);
  ellipse(50 + x, 45 + y, 10, 10);
  ellipse(48 + x, 35 + y, 5, 5);
}
