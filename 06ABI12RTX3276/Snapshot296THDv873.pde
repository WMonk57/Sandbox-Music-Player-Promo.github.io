//Global Variables
int AppWidth, AppHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage ;

void setup() {
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
  image(backgroundImage,backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End draw
//
void mousePressed() {
} // End mouse Pressed
//
void keyPressed() {
} // End KeyPressed
//
//END MAIN Program
