var alice; // this is our text
var thefont; // this is our font
var documentfrequency = {}; // this will hold the DF
var thechapter; // variable to hold one chapter
var currentchapter = 0; // what chapter are we on
var termfrequency = {}; // this will hold the current chapter's TF

function preload() {
  alice = loadStrings('./data/alice_cooked.txt');
  thefont = loadFont('./data/font.otf');
}

function setup() {
  createCanvas(800, 600);
  //console.log(alice);
  
  doDF(); // do the document frequency
  doTF(alice[currentchapter]); // do the term frequency for the current chapter
}

function draw() {
  background(255);
  fill(0);
  noStroke();
  
  var thresh = mouseX/width;

  textSize(9);

  text('chapter ' + currentchapter + ': ' + thresh, 20, 20);

  var margin = 20;
  var thex = margin; // start at the left
  var they = 40; // start one line down
  
  for(i in termfrequency)
  {
    var tfidf = termfrequency[i].frequency/documentfrequency[i];
    if(tfidf>=thresh)
    {
      var ts = map(tfidf, 0., 1., 6, 18);
      fill(tfidf*255, 0, 0);
      textSize(ts);
      text(i, termfrequency[i].x, termfrequency[i].y);
      termfrequency[i].x+=random(-5, 5);
      termfrequency[i].y+=random(-5, 5);
      
    }
  }
}

// do the document frequency for the whole damn book:
function doDF()
{
  for(var i = 0;i<alice.length;i++)
  {
    thechapter=alice[i].split(' '); // individual words
    for(var j = 0;j<thechapter.length;j++)
    {
      if(documentfrequency.hasOwnProperty(thechapter[j]))
      {
        // the word is already in the database:
        documentfrequency[thechapter[j]]++;
      }
      else
      {
        // the word is new:
        documentfrequency[thechapter[j]]=1;
      }
    }
  }
  
  //console.log(documentfrequency);
  
}

// do the document frequency for the whole damn book:
function doTF(tf)
{
  termfrequency = {};
  var chapter = tf.split(' '); // individual words
  
  for(var i = 0;i<tf.length;i++)
  {
    if(termfrequency.hasOwnProperty(chapter[i]))
    {
      // the word is already in the database:
      termfrequency[chapter[i]].frequency++;
    }
    else
    {
      // the word is new:
      termfrequency[chapter[i]]={};
      termfrequency[chapter[i]].frequency = 1;
      termfrequency[chapter[i]].x = random(width);
      termfrequency[chapter[i]].y = random(height);
    }
  }

  //console.log(termfrequency);
  
}

function keyReleased()
{
  currentchapter = (currentchapter+1)%alice.length;
  doTF(alice[currentchapter]); // do the term frequency for the current chapter
}