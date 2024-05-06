//AHHHHHHHHHHHHHHHHHHHHHHHHHH
//
//global variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight, albumCoverWidthAdjusted, albumCoverHeightAdjusted;
int appWidth, appHeight;
PImage albumCover;
float albumCoverRIGHT, albumCoverCENTERED, albumCoverLEFT;
String albumCoverPath ; // Lesson Note I AM COOL AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA
//
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
color black= 0;
color orange=#FF4400;

void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //DIVS
  albumCoverX = appWidth*1/10;
  albumCoverY =  appHeight*1/11;
  albumCoverWidth = appWidth*8/10;
  albumCoverHeight = appHeight*7/11;
  backgroundImageX = appWidth*0;
  backgroundImageY  = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  String extension = ".jpg";
  String MtoM = "Minutes_to_Midnight_cover" ; 
  String pathway = "../Images/";
  albumCoverPath = pathway + MtoM + extension ;
  albumCover= loadImage( albumCoverPath );
  // 
  //aspect ratio 
  float smallerAlbumCoverDimension = ( albumCoverWidth < albumCoverHeight ) ? albumCoverWidth : albumCoverHeight;
  float albumCoverImageWidthPixel= 300.0;
  float albumCoverImageHeightPixel = 300.0;
  float albumCoverAspectRatio= albumCoverImageWidthPixel / albumCoverImageHeightPixel ;
  float largerAlbumCoverDimension = smallerAlbumCoverDimension*albumCoverAspectRatio ; // ASPECT ratio CODE 
  //
  if ( albumCoverWidth < largerAlbumCoverDimension ) { //Image will not fit into DIV rect()
    while ( albumCoverWidth < largerAlbumCoverDimension ) {
      largerAlbumCoverDimension -= 1;
      smallerAlbumCoverDimension -= 1;
      //NOTE: ratios like percent are not linear decreases in both directions
    }
  }
  albumCoverWidthAdjusted = largerAlbumCoverDimension;
  albumCoverHeightAdjusted = smallerAlbumCoverDimension;
  //
  //Image can be centered, left justified, or right justified on the larger dimension;
  // LEFT: X-value of image same as rect()
  // CENTERED: X-value of image = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
  // RIGHT: X-value of image = albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
   
  albumCoverRIGHT = albumCoverX;
  albumCoverCENTERED = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2 ;
  albumCoverLEFT =albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
  //
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);//
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
}//End void setup
void draw() {
  
  
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  fill(black);
  
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  fill (orange);
  
  image( albumCover, albumCoverCENTERED, albumCoverY, albumCoverWidthAdjusted, albumCoverHeightAdjusted);
} // End void draw
//
void keyPressed() {
  
} // End Key Pressed
//
void mousePressed() {
  
} // End Mouse Pressed
//
// END MAIN PROGRAM
