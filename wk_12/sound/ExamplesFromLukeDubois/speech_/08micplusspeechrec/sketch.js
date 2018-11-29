var foo = new p5.SpeechRec('en-US'); // speech recognition object (will prompt for mic access)
foo.continuous = true;
foo.interimResults = true;
foo.onResult = showResult; // bind callback function to trigger when speech is recognized

var mic;

var x, y;
var xdir, ydir;

function setup() {
  createCanvas(800, 600);
  background(0);
  foo.start(); // start listening
  
  mic = new p5.AudioIn();
  mic.start();
  
  x = width/2;
  y = height/2;
  xdir = 0;
  ydir = 0;
}

function draw() {
  var level = mic.getLevel();
  //var level = 0;

  noStroke();
  if(level>0.1) fill(255, 0, 0, 20); else fill(255, 255, 255, 20);
  
  ellipse(x, y, level*50+10, level*50+10);
  
  x = x+xdir;
  y = y+ydir;
  if(x>width) x=0;
  if(x<0) x=width;
  if(y>height) y=0;
  if(y<0) y=height;
}

function showResult()
{
  textSize(48);
  //text(foo.resultString, 20, height/2);
  var res = foo.resultString.toLowerCase();
  if(res=='yes') background(0, 255, 0);
  if(res=='no') background(255, 0, 0);
  if(res.search('up')>-1) { xdir=0; ydir=-1; }
  if(res.search('down')>-1) { xdir=0; ydir=1; }
  if(res.search('left')>-1) { xdir=-1; ydir=0; }
  if(res.search('right')>-1) {xdir=1; ydir=0; }
  if(res.search('stop')>-1) { xdir=0; ydir=0; }
  if(res.search('clear')>-1) { background(0); }
  console.log(foo.resultString); // log the result
}
