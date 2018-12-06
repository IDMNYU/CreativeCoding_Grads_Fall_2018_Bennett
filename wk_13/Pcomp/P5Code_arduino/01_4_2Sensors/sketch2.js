var serial; // variable to hold an instance of the serialport library
var portName = '/dev/cu.usbmodem1451'; // fill in your serial port name here
var inData; // for incoming serial data
var xPos = 0; // x position of the graph

function setup() {
  serial = new p5.SerialPort(); // make a new instance of the serialport library
  serial.on('list', printList); // set a callback function for the serialport list event
  serial.on('connected', serverConnected); // callback for connecting to the server
  serial.on('open', portOpen); // callback for the port opening
  serial.on('data', serialEvent); // callback for when new data arrives
  serial.on('error', serialError); // callback for errors
  serial.on('close', portClose); // callback for the port closing

  //serial.list(); // list the serial ports

  //var options = { baudrate: 9600}; // change the data rate to whatever you wish
  //serial.open(portName, options);

  serial.open(portName); // open a serial port

  createCanvas(400, 300);
  background(37, 252, 105);
}

function draw() {
  //console.log(inData);
  //console.log(inData[0]);
  //console.log(inData[1]);
  

  //graphData(inData);


}

function graphData(newData) {
    console.log(newData);
  /*
  // map the range of the input to the window height:
  var yPos = map(newData, 0, 255, 0, height);
  // draw the line in a pretty color:
  stroke(37, 252, 105);
  line(xPos, height, xPos, height - yPos);
  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    // clear the screen by resetting the background:
     background(8, 103, 206);
  } else {
    // increment the horizontal position for the next reading:
    xPos++;
  }
  */
}

function serverConnected() {
  console.log('connected to server.');
}

function portOpen() {
  console.log('the serial port opened.')
}


// get the list of ports:
function printList(portList) {
  // portList is an array of serial port names
  for (var i = 0; i < portList.length; i++) {
    // Display the list the console:
    console.log(i + " " + portList[i]);
  }
}
function serialEvent() {
  //inData = Number(serial.read());
  //console.log(inData);
   // read a string from the serial port
  // until you get carriage return and newline:
  var inString = serial.readStringUntil('\r\n');
 
  //check to see that there's actually a string there:
  if (inString.length > 0 ) {
    var sensors = split(inString, ',');            // split the string on the commas
    if (sensors.length > 2) {                      // if there are three elements
      //locH = map(sensors[0], 250, 410, 0,width);   // element 0 is the locH
      //locV = map(sensors[1], 250, 410, 0, height); // element 1 is the locV
    }
    print("photo cell is:  ");
    print(sensors[0]);


    print("button is:  ");
    print(sensors[1]);


    if(sensors[1] == 1){
      background(0);
    }
    else{
      background(127, 200, 75);
    }

    drawEllipse(sensors[0]);
  }
}

function drawEllipse(val){
  fill(255);
  ellipse(val, height/2, 60, 60);
}

function serialError(err) {
  console.log('Something went wrong with the serial port. ' + err);
}

function portClose() {
  console.log('The serial port closed.');
}