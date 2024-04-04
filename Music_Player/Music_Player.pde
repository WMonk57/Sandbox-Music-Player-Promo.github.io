//Global Variables
int appWidth, appHeight;
//
void setup() {
 println("HelloWorld");

  //Concatenation & Inspecting Varianles with Character Escapes
  println("Width: "+width, "\tHeight"+height, "\tDisplay Width"+displayWidth, "\tDisplay Height"+displayHeight);
  //NULL: all values are NULL until size(), arithmetic errors
  println("Example Formula: add 1900 to the width", width+1900);  
  //
  //Display: CANVAS & Full screen
  //size(1920,1080); // width, height
  fullScreen();   // displayWidth, displayHeight
appWidth = displayWidth;
appHeight = displayHeight;
//println(appWidth, appHeight);
//display Geometry: landscape, portait, square
String displayInstructions =( appWidth >= appHeight ) ? "Correct Way" : "!!!!WRONG WAY!!!!" ; 
println(displayInstructions);
} //End setup
//
void draw() {
  
} //End draw
//
void keyPressed() {
  
} //End keyPressed
//
void mousePressed() {
  
} //End mousePressed
//
// End MAIN Program
