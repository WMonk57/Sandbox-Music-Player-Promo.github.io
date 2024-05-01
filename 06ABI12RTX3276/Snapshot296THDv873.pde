//Global Variables
int AppWidth, AppHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage ;
Boolean lightMode=false,  nightMode=false, dayMode=false;
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
  String backgroundImageName = "Linkin_Park_Hybrid_Theory_Album_Cover.jpg";
  String pathway = "../Images/";
  String path = pathway + backgroundImageName;
  backgroundImage = loadImage(path) ;
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup

void draw() {
  tint(255, brightness);
  image(backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);
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
  } //End Day Mode
  //End Night Mode
} // End KeyPressed
//
//END MAIN Program
