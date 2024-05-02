import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer soundEffects1;
AudioPlayer playlist1;
//
int appWidth, appHeight;
int brightness = 255;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int size;
PFont cheese;
PFont generalFont;
Boolean lightMode=true, nightMode=false, dayMode=false;
//
color backgroundColor;
color whiteBackground=255;
color darkBackground=0;
color Aqua=#0AF5EF;
color Orange=#FF4400;
color Black = #000000;
color foregroundColor;
color green =#3FEA07;
boolean whiteMode = false;
color purple= #A20AF5;
String exit = "EXIT";
String currentSong = "Song Name Goes HERE";
String albumCover = "Album Cover Goes HERE";
String timeLeft = " Time remaining goes HERE";
PImage backgroundImage;
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
  minim = new Minim(this);
  String extension = ".mp3";
  String exitSound = "bruh-sound-effect-made-with-Voicemod";
  String pathwaySoundEffects = "../SOUND FILE SOUNDSSSSSSSSSSSSsssss/";
  //  println( pathwaySoundEffects+exitSound+extension );
  String path = sketchPath( pathwaySoundEffects+exitSound+extension );
  //
  String extension2 = ".jpg";
  String meteoraAlbumCover = "Linkin_Park_Meteora_Album_Cover";
  String hybridTheory = "Linkin_Park_Hybrid_Theory_Album_Cover";
  String backgroundImageName = hybridTheory;
  String pathway = "../Images/";
  String path2 = pathway + backgroundImageName + extension2;
  backgroundImage = loadImage(path2) ;
  // println( path );
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
  //Fonts from OS (operating system)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList);// onyx or wingdings
  size =55;
  generalFont = createFont("Times New Roman", size);
  cheese = createFont("Wingdings", size);
  //
  divs();

  // var Populataition
  //if () {backgroundColor = whiteBackground} else {backgroundColor = darkBackground}
  // if (  whiteMode==true && hour() >=8 && hour()<21 ) backgroundColor= whiteBackground;
  //if ( hour() <8 && hour()>=21 ) backgroundColor= darkBackground;
  if ( whiteMode==true && hour()>=8 && hour()<=21 ) {
     if (lightMode==true) {backgroundColor = whiteBackground;
    foregroundColor = #0AF5EF;
    backgroundImageName = hybridTheory; //obiWan
    path = pathway + backgroundImageName + extension;
    backgroundImage = loadImage( path );
  } else {
      backgroundColor = #0AF5EF;
    foregroundColor = whiteBackground;
  backgroundImageName = meteoraAlbumCover;
    path = pathway + backgroundImageName + extension;
    backgroundImage = loadImage( path );
} //end light mode
     
  } else {
    backgroundColor = darkBackground;
    foregroundColor = #FF4400;
    if (hour() >=8 && hour()<21 ) foregroundColor = #0AF5EF;
  }
  //
} //End setup
//
void draw() {
  background(0); // day mode light mode ON /OFF
  // light mode ON = max saturation and max color
  if (lightMode == true) { // need key bind
    brightness = 255;
  } else {
    brightness = 100;//userpreference smallest brightness
  }
  tint(255, brightness);
  image(backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);
  //  background(backgroundColor); //Hard coded background color ou use that ewdawda=dsdadgsda ddsd= use 'if' to change
  fill(foregroundColor);
  //
  //Quit Button
  fill(purple);
  rect(exitX, exitY, exitWidth, exitHeight);
  if (mouseX>exitX && mouseX<exitX+exitWidth && mouseY>exitY && mouseY<exitY+exitHeight ) {
    fill(Orange);
    rect(exitX+exitWidth*1/5, exitY+exitHeight*0.75/4, exitWidth*3/5, exitHeight*2.5/4 );
    fill(foregroundColor);
  } else {
    fill(purple);
  }

  fill(Aqua);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;
  textFont(generalFont, size);
  text (exit, exitX, exitY, exitWidth, exitHeight);

  fill(Orange);
  rect(currentSongX, currentSongY, currentSongWidth, currentSongHeight);
  fill(purple);
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(generalFont, size);
  text (currentSong, currentSongX, currentSongY, currentSongWidth, currentSongHeight);
  //
  //
  fill(Orange);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;

  fill(green);
  rect(startX, startY, startWidth, startHeight);

  fill(green);
  rect(rewindX, rewindY, rewindWidth, rewindHeight);

  fill(green);
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);

  fill(purple);
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  fill(green);
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(generalFont, size);
  text (albumCover, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  //
  //
  fill(green);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;

  fill(Aqua);
  rect(songBarThingX, songBarThingY, songBarThingWidth, songBarThingHeight);

  fill(Aqua);
  rect(timeLeftX, timeLeftY, timeLeftWidth, timeLeftHeight);
  //
  fill(Orange);
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(generalFont, size);
  text (timeLeft, timeLeftX, timeLeftY, timeLeftWidth, timeLeftHeight );
  //
  //
  fill(Orange);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;
  //
  fill(green);
  rect(settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);

  fill(Aqua);
  rect(volumeBarX, volumeBarY, volumeBarWidth, volumeBarHeight);


  //
  fill(foregroundColor);
} //End draw
//
void keyPressed() {        //Listener
  if (key=='X' || key=='x')
  {
    soundeffect_1();
  }
  if (key==CODED && keyCode==ESC)
  {
    soundeffect_1();
  }
  if (key=='Q' || key=='q') ;
  if (key=='?')  soundEffects1.loop(0);

  if ( key=='Z' || key=='z' ) {  //day mode white light containing blue color
    if (lightMode == false ) {
      lightMode = true; //light mode on
    } else {
      lightMode = false; // dark mode on
    }
  }
    if (key=='A' || key=='a') {
    if (  whiteMode == false ) {
      whiteMode = true;  //Light Mode ON
    } else {
      whiteMode = false; //Dark Mode ON, no darkMode Boolean required
    }
    }
   //End Day Mode
  //End Night Mode
} //End keyPressed
//
void mousePressed() {      //Listener

  if ( mouseX>exitX && mouseX<exitX+exitWidth && mouseY>exitY && mouseY<exitY+exitHeight )
  {
    soundeffect_1();
  }
} //End mousePressed
//

// End MAIN Program
//255,68,0
