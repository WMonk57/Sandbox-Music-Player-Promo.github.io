//Global Variables
int AppWidth, AppHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage ;
Boolean lightMode=true, nightMode=false, dayMode=false;
Boolean hybridTheory=true, meteoraAlbumCover=false;
int brightness=255;
//Boolean darkMode=false; not need in keypressed anymore because of lightmode stuff
void setup() {
  fullScreen();
  AppWidth = displayWidth;
  AppHeight = displayHeight;
  //Population
  backgroundImageX = AppWidth*0;
  backgroundImageY  = AppHeight*0;
  backgroundImageWidth = AppWidth-1;
  backgroundImageHeight = AppHeight-1;
  //
  String extension = ".jpg";
  // String meteoraAlbumCover = "Linkin_Park_Meteora_Album_Cover";
  String hybridTheory = "Linkin_Park_Hybrid_Theory_Album_Cover";
  String backgroundImageName = hybridTheory;
  String pathway = "../Images/";
  String path = pathway + backgroundImageName + extension;
  backgroundImage = loadImage(path) ;
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup

void draw() {
  background(0); // day mode light mode ON /OFF
  // light mode ON = max saturation and max color
  if (lightMode == true) {
    brightness = 255;
  } else {
    brightness = 100;//userpreference smallest brightness
  }
  tint(255, brightness);
  image(backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);

  if () {
  } else {
  }
} //End draw
//
void mousePressed() {
} // End mouse Pressed
//
void keyPressed() {
  //keyboard shortcuts for mouse pressing prototype
  if ( key=='Z' || key=='z' ) {  //day mode white light containing blue color
    if (lightMode == false ) {
      lightMode = true; //light mode on
    } else {
      lightMode = false; // dark mode on
    }
    if ( key=='A' || key=='a' ) {
      if (backgroundImageName= hybridTheory){
        hybridTheory = true;
    } else {
      meteoraAlbumCover= true;
      hybridTheory=false;
    }
  }
  } //End Day Mode
  //End Night Mode
} // End KeyPressed
//
//END MAIN Program
