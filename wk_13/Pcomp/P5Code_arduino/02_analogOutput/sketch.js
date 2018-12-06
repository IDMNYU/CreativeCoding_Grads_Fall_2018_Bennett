var serial; // variable to hold an instance of the serialport library
var portName = '/dev/cu.usbmodem1451'; // fill in your serial port name here
var inData; // for incoming serial data
var xPos = 0; // x position of the graph
var outByte = 0;

function setup() {
  serial = new p5.SerialPort(); // make a new instance of the serialport library
  serial.on('error', serialError); // callback for errors

  //var options = { baudrate: 9600}; // change the data rate to whatever you wish
  //serial.open(portName, options);

  serial.open(portName); // open a serial port

  createCanvas(400, 300);
  background(8, 103, 206);
}

function draw() {
 // black background, white text:
 background(0);
 fill(255);
 // display the incoming serial data as a string:
 text("outgoing value: " + outByte, 30, 30);
}


function mouseDragged() {
 // map the mouseY to a range from 0 to 255:
 outByte = int(map(mouseY, 0, height, 0, 255));
 // send it out the serial port:
 serial.write(outByte);
}

function keyPressed() {
 if (key >=0 && key <=9) { // if the user presses 0 through 9
 outByte = byte(key * 25); // map the key to a range from 0 to 225
 }
 serial.write(outByte); // send it out the serial port
}


function serialEvent() {
 // read a byte from the serial port:
 var inByte = serial.read();
 // store it in a global variable:
 inData = inByte;
}
 
function serialError(err) {
  console.log('Something went wrong with the serial port. ' + err);
}