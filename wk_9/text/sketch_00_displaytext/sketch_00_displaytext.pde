// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-1: Simple displaying text

// Step 2: Declare PFont variable
PFont f;  
PFont kurtz;
PFont anotherFont;

void setup() {
  size(640, 480);

  // Step 3: Create Font
  f = createFont("Arial", 16);
  anotherFont = loadFont("CourierFinalDraft-18.vlw");
  kurtz = createFont("font3.otf", 16);
  
} 

void draw() {
  background(255);
  textFont(f, 16); // Step 4: Specify font to be used
  fill(255, 0, 0);         // Step 5: Specify font color

  // Step 6: Display Text
  text("Mmmmm ... Strings ...", 10, height/2);
  
  
  textFont(kurtz, 42);
  fill(0);
  text("hello there", width/2, height/2);
}
