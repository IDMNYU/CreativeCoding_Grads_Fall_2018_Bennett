int state;

void setup() {
  size(400, 400);
  state = 0;
}

void draw() {
  println(millis());
  switch(state){
  case 0:
    // do stuff in this state
    //my function calls for this pattern
    if (mousePressed) {
    }
   // break;

  case 1:
    // do stuff
    // my other function calls for my snazzy pattern
    break;

  case 2:
    // more fun stuff
    break;
  }
}

void mousePressed() {
  if (state < 2) {
    state++;
  } else {
    state = 0;
  }
