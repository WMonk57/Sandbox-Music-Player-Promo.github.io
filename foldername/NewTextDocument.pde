//AHHHHHHHHHHHHHHHHHHHHHHHHHH
//
//global variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
int appWidth, appHeight;
PImage albumCover;
String albumCoverPath ; // Lesson Note I AM COOL AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA


//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //DIVS
  albumCoverX = appWidth*1/10;
  albumCoverY =  appHeight*1/11;
  albumCoverWidth = appWidth*8/10;
  albumCoverHeight = appHeight*7/11;
  //
  String extension = ".jpg";
  String MtoM = "Minutes_to_Midnight_cover" ; 
  String pathway = "../Images/";
  albumCoverPath = pathway + MtoM + extension ;
  albumCover= loadImage( albumCoverPath );
  // 
  //
  //
  //
  //
  //
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);//
  //
}//End void setup
void draw() {
  image( albumCover, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} // End void draw
//
void keyPressed() {
  
} // End Key Pressed
//
void mousePressed() {
  
} // End Mouse Pressed
//
// END MAIN PROGRAM
