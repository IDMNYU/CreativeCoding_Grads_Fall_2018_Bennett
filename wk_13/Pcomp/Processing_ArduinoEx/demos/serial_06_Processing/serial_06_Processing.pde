import processing.serial.*;

Serial myPort;

float brightness = 0; //For holding value from pot
String portName;

void setup() {
  size(800, 600);
  //printArray(Serial.list()); // 2
  ///*
  portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
  //*/
}


void draw() {
  background(0, 0, brightness);
}

void serialEvent(Serial port) {
  brightness = float(port.readStringUntil('\n')); //Gets va
  println(brightness);
}