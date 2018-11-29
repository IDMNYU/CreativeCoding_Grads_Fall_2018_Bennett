var mic, recorder, soundFile;
var state = 0; // are we stopped, recording, or what?

function setup() {
  createCanvas(800, 600);
  background(200);
  // create an audio in
  mic = new p5.AudioIn();

  // prompts user to enable their browser mic
  mic.start();

  // create a sound recorder
  recorder = new p5.SoundRecorder();

  // connect the mic to the recorder
  recorder.setInput(mic);

  // this sound file will be used to
  // playback & save the recording
  soundFile = new p5.SoundFile();

  text('keyPress to record', 20, 20);
}

function draw()
{
  soundFile.rate((mouseX/width)*2);

}

function keyPressed() {
  // make sure user enabled the mic
  if (state == 0 && mic.enabled) {

    // record to our p5.SoundFile
    recorder.record(soundFile);

    background(255,0,0);
    text('Recording!', 20, 20);
    state=1;
  }
  else if (state == 1) {
    background(0,255,0);

    // stop recorder and
    // send result to soundFile
    recorder.stop();

    text('Stopped', 20, 20);
    state=2;
  }

  else if (state == 2) {
    soundFile.loop();
    soundFile.play(); // play the result!
    //save(soundFile, 'mySound.wav');
    state=0;
  }
}