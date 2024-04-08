//Global Variables
int appWidth, appHeight;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float rewindX, rewindY, rewindWidth, rewindHeight;
float fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight;
float startX, startY, startWidth, startHeight;
float settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight;
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
backgroundY =  appHeight*0;
backgroundWidth = appWidth*0;
backgroundHeight = appHeight*0; 
albumCoverX = appWidth*1/10;
albumCoverY =  appHeight*1/11;
albumCoverWidth = appWidth*8/10;
albumCoverHeight = appHeight*7/11;
rewindX = appWidth*4/14;
rewindY = appHeight*10/12;
rewindWidth = appWidth*1/14;
rewindHeight = appHeight*1/12;
fastForwardX = appWidth*9/14;
fastForwardY =  appHeight*10/12;
fastForwardWidth = appWidth*1/14;
fastForwardHeight = appHeight*1/12;
startX = appWidth*6.5/14;
startY =  appHeight*10/12; 
startWidth = appWidth*1/14;
startHeight = appHeight*1/12;
settingsGearX =appWidth*12/14; 
settingsGearY = appHeight*10/12;
settingsGearWidth = appWidth*1/14;
settingsGearHeight = appHeight*1/12;
//
//Layout DIVs
//rect(X, Y, Width, Height); 
rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); 
int centerX= appWidth *1/2;
int centerY= appHeight *1/2;
rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);

rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight); 

rect(rewindX, rewindY, rewindWidth, rewindHeight);
rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight); 
rect(startX, startY, startWidth, startHeight); 
rect(settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);
/*
rect(stopX, stopY, stopWidth, stopHeight); 
rect(titleX, titleY, titleWidth, titleHeight); 
rect(visuaLine2X, visuaLine2Y, visuaLine2Width, visuaLine2Height); 
rect(visualLine1X, visualLine1Y, visualLine1Width, visualLine1Height); 
rect(timeLeftX, timeLeftY, timeLeftWidth, timeLeftHeight); 
rect(nextSongX, nextSongY, nextSongWidth,nextSongHeight); 
rect(currentSongX, currentSongY, currentSongWidth, currentSongHeight); 
*/
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
