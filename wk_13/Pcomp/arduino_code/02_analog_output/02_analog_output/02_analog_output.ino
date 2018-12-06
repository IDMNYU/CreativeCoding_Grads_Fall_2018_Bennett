int ledPin = 11;

void setup() {
  Serial.begin(9600);           // initialize serial communications
  //pinMode(ledPin, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) { // if there's serial data available
    int val = Serial.read();   // read it
    Serial.write(val);         // send it back out as raw binary data
    if (val > 0) {
      analogWrite(ledPin, val);
    } else {
      analogWrite(ledPin, val);
    }
  }
}
