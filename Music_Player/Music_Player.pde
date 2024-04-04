//Global Variables
int appWidth, appHeight;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
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
//landscape is HARDCODED
//println(appWidth, appHeight);
//display Geometry: landscape, portait, square
String displayInstructions =( appWidth >= appHeight ) ? "Correct Way" : "!!!!WRONG WAY!!!!" ; 
println(displayInstructions);
//
//Populate
backgroundX = appWidth*0;
backgroundY = appHeight*0;
backgroundWidth = appWidth*0;
backgroundHeight = appHeight*0; 
//
//Layout DIVs
//rect(X, Y, Width, Height); 
rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); 
int centerX= appWidth *1/2;
int centerY= appHeight *1/2;
rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);

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
