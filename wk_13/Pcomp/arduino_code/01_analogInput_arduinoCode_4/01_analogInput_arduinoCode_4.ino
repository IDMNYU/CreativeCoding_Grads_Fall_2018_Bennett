int switchPin = 4;
int switchState = 0;
int lastSwitchState = 0;
int ledState = LOW;
int ledPin = 13;
 
// the following variables are unsigned longs because the time, measured in
// milliseconds, will quickly become a bigger number than can be stored in an int.
unsigned long lastDebounceTime = 0;  // the last time the output pin was toggled
unsigned long debounceDelay = 50;    // the debounce time; increase if the output flickers


void setup() {
 Serial.begin(9600); // initialize serial communications
 pinMode(switchPin, INPUT);

 pinMode(ledPin, OUTPUT);

  // set initial LED state
  digitalWrite(ledPin, ledState);
}
 
void loop() {
 int potentiometer = analogRead(3);                  // read the input pin
 int mappedPot = map(potentiometer, 0, 1023, 0, 255); // remap the pot value to fit in 1 byte
 Serial.print(mappedPot);
 Serial.print(",");
 //Serial.write(mappedPot);                             // print it out the serial port
 //delay(1);  // slight delay to stabilize the ADC

  int reading = digitalRead(switchPin);
  //Serial.println(reading);
  if(reading != lastSwitchState){
    lastDebounceTime = millis();
  }

  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:

    // if the button state has changed:
    if (reading != switchState) {
      switchState = reading;

      if(switchState == HIGH){
        ledState = !ledState;
      }
    }
  }
  Serial.println(reading); // after this reading is sent out, a line return is sent out after, completing the line
  digitalWrite(ledPin, ledState);

  lastSwitchState = reading;
  delay(2);
}
