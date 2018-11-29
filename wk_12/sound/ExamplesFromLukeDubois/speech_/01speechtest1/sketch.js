
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

function setup() {
  
  var foo = new p5.Speech(); // speech synthesis object
  foo.speak('i run best in google chrome'); // say something 

}

function draw() {
  
}