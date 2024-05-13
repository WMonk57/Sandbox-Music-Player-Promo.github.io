import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Minim Library
//
//global variables 
Minim minim; 
AudioPlayer playlist1;
AudioPlayer soundEffects1;
AudioPlayer soundEffects2;
//
int appWidth, appHeight;
//
void setup() {
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
  String musicpath = "../Music/";
  String newsroom = "Newsroom";
  String exitSound = "bruh-sound-effect-made-with-Voicemod";
  String pathwaySoundEffects = "../SOUND FILE SOUNDSSSSSSSSSSSSsssss/";
  //  println( pathwaySoundEffects+exitSound+extension );
  String path = sketchPath( pathwaySoundEffects+exitSound+extension );
  String clownCar = "clown-car-made-with-Voicemod";
  String path3 = sketchPath( pathwaySoundEffects + clownCar + extension);
   soundEffects1 = minim.loadFile( path );
  soundEffects2 = minim.loadFile( path3); 
  println ( musicpath + newsroom + extension);
  
  
} // END setup
//
void draw() { 
  
}// End Draw
//
void keyPressed() {
  
}//END keyPressed 
//
void mousePressed() {
  
}// END mousePressed
//
//END MAIN PROGRAM
