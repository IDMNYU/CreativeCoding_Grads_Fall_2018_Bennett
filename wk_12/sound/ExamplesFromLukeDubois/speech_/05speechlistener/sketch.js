
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

// language model is the argument - BCP-47
var foo = new p5.SpeechRec('en-US'); // speech recognition object (will prompt for mic access)
foo.continuous = true;
foo.interimResults = true;
foo.onResult = showResult; // bind callback function to trigger when speech is recognized

function setup() {
  createCanvas(800, 600);
  foo.start(); // start listening
  fill(255);
  background(0);
}

function draw() {
}

function showResult()
{
  background(0);
  textSize(48);
  text(foo.resultString, 20, height/2);
  console.log(foo.resultString); // log the result
}

