
var mic;

function setup() {
  createCanvas(800, 600);
  background(0);
  
  mic = new p5.AudioIn();
  mic.start();
}

function draw() {
  var level = mic.getLevel();

  if(level>0.1) background(255, 0, 0); else background(0);
  
  fill(255);
  ellipse(width/2, height/2, level*1000, level*1000);
}

