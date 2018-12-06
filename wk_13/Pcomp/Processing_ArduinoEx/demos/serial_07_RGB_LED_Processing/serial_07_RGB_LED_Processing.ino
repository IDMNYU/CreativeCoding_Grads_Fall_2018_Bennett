/*
   This is using a common anode LED (the common is hooked up to +5 volts)
   The other legs of the LED are each hooked up to a fixed resistor 270 - 330 ohm to ground

   if you are using a common cathode LED, see below on how to modify the code

   Original code from Adafruit Lesson 3. RGB LED by Simon Monk https://learn.adafruit.com/adafruit-arduino-lesson-3-rgb-leds/arduino-sketch
   and ReadASCIIString example created 13 Apr 2012 by Tom Igoe

    additions by Jeremy Blum 2013

  modified 14 Mar 2016
  by Arturo Guadalupi

  modified 20 June 2016
  by Katherine Bennett

  Open up the serial monitor and type in your RGB values separated by commas:
  255, 0, 0  = red
  0, 255, 0 = green
  0, 0, 255 = blue
  etc etc

*/

int redPin = 11;
int greenPin = 10;
int bluePin = 9;

//Variables for RGB levels
int red = 0;
int green = 0;
int blue = 0;


void setup() {
  // initialize serial:
  Serial.begin(9600);
  // make the pins outputs:
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);

}

void loop() {
  // if there's any serial available, read it:
  while (Serial.available() > 0) {

    // look for the next valid integer in the incoming serial stream:
     red = Serial.parseInt();
    // do it again:
     green = Serial.parseInt();
    // do it again:
     blue = Serial.parseInt();

    // look for the newline. That's the end of your
    // sentence:
    if (Serial.read() == '\n') {
      // constrain the values to 0 - 255 and invert
      // if you're using a common-cathode LED, just use "constrain(color, 0, 255);"
      red = 255 - constrain(red, 0, 255);
      green = 255 - constrain(green, 0, 255);
      blue = 255 - constrain(blue, 0, 255);

      // fade the red, green, and blue legs of the LED:
      analogWrite(redPin, red);
      analogWrite(greenPin, green);
      analogWrite(bluePin, blue);
    }

  }
}
