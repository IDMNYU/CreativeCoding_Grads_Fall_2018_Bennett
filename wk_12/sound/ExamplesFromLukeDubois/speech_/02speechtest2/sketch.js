
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

function setup() {
  createCanvas(800, 600);
  background(0);
}

function draw() {
  fill(255);
}

function mousePressed()
{
  text('yikes!', mouseX, mouseY);
  foo.speak('yikes!');
}

function speechLoaded()
{
  foo.listVoices();
  foo.setVoice('Google UK English Female');
  foo.interrupt = true;
  foo.speak('my dog has fleas!!!!'); // say something 
}