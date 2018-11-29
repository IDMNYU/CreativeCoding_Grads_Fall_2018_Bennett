
// download the p5.speech library from:
// http://ability.nyu.edu/p5.js-speech/
// (go to download latest copy of the library)
// then:
// unzip the thing
// then in the 'lib' folder copy the p5.speech.js file
// and throw it in the libraries folder of your p5 project
// then:
// add it to the index.html
// then this should work if you turn on 'run in browser'
var foo = new p5.Speech(); // speech synthesis object
foo.onLoad = speechLoaded;
foo.onEnd = speechFinished;

var words = ['television', 'beer', 'software', 'donut', 'refrigerator'];

function setup() {
  createCanvas(800, 600);
  background(0);
}

function draw() {
  fill(255);
}

function mousePressed()
{
  var thepitch = map(mouseY, 0, height, 2., 0.01);
  var therate = map(mouseX, 0, width, 0.1, 2);
  foo.setPitch(thepitch);
  foo.setRate(therate);
  
  var which = random(words.length); // floating point random in the right rang
  which = floor(which); // hack off everything after the decimal (turn into integer)
  var theword = words[which];
  
  // which = random(foo.voices.length);
  // which = floor(which);
  // foo.setVoice(which); // change voice every click
  
  text(theword, mouseX, mouseY);
  foo.speak(theword);
}

function speechFinished()
{
  background(0);
}

function speechLoaded()
{
  foo.listVoices();
  foo.setVoice('Google UK English Female');
  foo.interrupt = true;
  foo.speak('my dog has fleas!!!!'); // say something 
}