void setup(){
  size(200, 200);
  background(255);
  
  
}


void draw(){
  color r = color(255, 0, 0);
  color g = color(0, 0, 255);
  int v = frog(r, color(29, 33, 200));
  println(v);
  pushMatrix();
  translate(width/2, height/2);
  int q = frog(g, color(0));
  println(q);
  popMatrix();
  
}

int frog(color skin, color dot){
   // draw frog:
  noStroke();
  //fill(32, 219, 36);
  fill(skin);
  beginShape();
  vertex(9, 1);
  vertex(13, 1);
  vertex(14, 4);
  vertex(17, 6);
  vertex(18, 5);
  vertex(18, 1);
  vertex(21, 3);
  vertex(19, 4);
  vertex(19, 8);
  vertex(16, 7);
  vertex(19, 9);
  vertex(20, 10);
  vertex(21, 14);
  vertex(18, 15);
  vertex(18, 11);
  vertex(15, 10);
  vertex(13, 13);
  vertex(8, 13);
  vertex(7, 11);
  vertex(5, 10);
  vertex(4, 15);
  vertex(1, 13);
  vertex(3, 11);
  vertex(4, 8);
  vertex(6, 9);
  vertex(6, 7);
  vertex(3, 7);
  vertex(3, 4);
  vertex(1, 3);
  vertex(5, 1);
  vertex(4, 6);
  vertex(8, 4);
  vertex(9, 1);
  endShape();

  fill(248, 235, 21);
  //fill(skin);
  ellipse(11, 7, 2, 2);

  //fill(253, 3, 217);
  fill(dot);
  ellipse(7, 3, 2, 2);
  ellipse(15, 3, 2, 2);
  
  int money = 5 + 10;
  return money;
}
