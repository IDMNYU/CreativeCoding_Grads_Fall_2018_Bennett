// From Luke DuBois

var threshold = 128;
var img;

function preload() {
  img = loadImage('pic.jpg');
}

function setup() {
  createCanvas(1000, 600);
  noSmooth(); // don't smooth anything
}

function draw() {
  background(0);
  image(img, 0, 0, width, height);
}

function keyTyped()
{
  img.loadPixels();
  for(var i = 0;i<img.width;i++)
  {
    for(var j = 0;j<img.height;j++)
    {
      var pixel = img.get(i, j);
      var newpixel = [];
      /*
       newpixel[0] = pixel[1]; // R
       newpixel[1] = pixel[2]; // G
       newpixel[2] = pixel[0]; // B
       newpixel[3] = 255; // A
       var avg = (pixel[0]+pixel[1]+pixel[2]) / 3.;
       newpixel[0] = 255-avg;
       newpixel[1] = 255-avg;
       newpixel[2] = avg;
       newpixel[3] = 255;
      img.set(i, j, newpixel);
      img.set(i, j, 0);
      */
      img.set(i+floor(random(-30, 30)), j+floor(random(-30,30)), pixel);
    }
  }
  img.updatePixels();
}
