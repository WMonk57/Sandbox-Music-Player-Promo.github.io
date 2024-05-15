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
int numberSoundEffects = 2;
int numberMusicSongs = 4;
AudioPlayer[] playlist = new AudioPlayer [ numberMusicSongs ];
AudioPlayer[] soundEffects = new AudioPlayer [ numberSoundEffects] ;
//AudioPlayer soundEffects2;
//AudioPlayer musicsound1;
int currentSong = 0;
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
  String pathQuitButtonSOund = sketchPath( pathwaySoundEffects+exitSound+extension );
  String pathNewsRoomMUSIC = sketchPath ( musicpath+newsroom+extension); 
  String clownCar = "clown-car-made-with-Voicemod";
  String path3 = sketchPath( pathwaySoundEffects + clownCar + extension);
   soundEffects[0] = minim.loadFile( pathQuitButtonSOund );
  soundEffects[1] = minim.loadFile( path3); 
  playlist[0] = minim.loadFile(pathNewsRoomMUSIC);
  println ( musicpath + newsroom + extension);
  //
  //playlist[currentSong].loop(0);
} // END setup
//
void draw() { 
  println("song position", playlist[currentSong].position(), "song length", playlist[currentSong].length());
  
  
  //  playlist[currentSong].loop(0);
  
  //if ( playlist[currentSong].isLooping() && playlist[currentSong].loopCount()!=-1 ) println("There are", playlist[currentSong].loopCount(), "loops left.");
 // if ( playlist[currentSong].isLooping() && playlist[currentSong].loopCount()==-1 ) println("Looping Infinitely");
 if ( !playlist[currentSong].isPlaying() ) println( "nothing is playing, PICK A SONG NOW!!!!!!!!!!!!!!!!!!" );
  if ( playlist[currentSong].isPlaying() && !playlist[currentSong].isLooping() ) println("Play Once");
  //
  
  if ( playlist[currentSong].isPlaying() ) {
    //Empty IF, TRUE
  } else if ( playlist[currentSong].length() < 60000 ) {
    playlist [currentSong].rewind();
  } 
  else if (!playlist[currentSong].isPlaying() && ( playlist[currentSong].position() > playlist[currentSong].length()*0.75 ) ) {
    //true if 75% player restart 
    //currentSong at end of FILE
    playlist[currentSong].rewind();
    //currentSong = currentSong + 1; //currentSong++; currentSong+=1
   // playlist[currentSong].play();
  } else {
    
  }
  
}// End Draw
//
void keyPressed() {
  if ( key == 'P' || key == 'p' ) { //play pause button feature !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //
  if ( playlist[currentSong].isPlaying()) {
    playlist[currentSong].pause();
  } else {
    playlist[currentSong].play();
  }
  } //END play pause button 
  
}//END keyPressed 
//
void mousePressed() {
  
}// END mousePressed
//
//END MAIN PROGRAM
// .rewind(); for later 
