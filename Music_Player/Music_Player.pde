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
AudioPlayer soundEffects2;
//
int appWidth, appHeight;
int brightness = 255;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int size;
PFont cheese;
PFont generalFont;
Boolean lightMode=false, dayMode=false;
PImage MtoM;
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
boolean albumCover3 = false;
color purple= #A20AF5;
String exit = "EXIT";
//String currentSong1 = "Song Name Goes HERE";
String albumCover = "Album Cover Goes HERE";
String timeLeft = " Time remaining goes HERE";
PImage backgroundImage;
PImage hybridTheory, meteoraAlbumCover;
String pathDarkBackgroundImage, pathLightBackgroundImage;
color backgroundColour;
color foregroundColour;
String albumCoverPath ;
PImage albumCover1;
String albumCoverPath2;
PImage albumCover2;
float albumCoverRIGHT, albumCoverCENTERED, albumCoverLEFT;
PImage playButton1;
String playButtonPath;
String Rewind;
PImage REWIND;
String fastF;
PImage FastF;
PImage Gear;
String settingspath;
String DoorOpen;
PImage exitOpenDoor;
String doorclose;
PImage DoorClosed;
int numberSoundEffects = 2;
int numberMusicSongs = 2;
int currentSong = 0;
Boolean looping = false;
AudioMetaData[] playlistMetaData = new AudioMetaData [ numberMusicSongs ];
String StartButton;
PImage playButton2;
String REwind2;
PImage REWIND2;
String fastforward2;
PImage FASTF2;
String gear2;
PImage GEAR2;

String[] filePathNameMusic = new String[numberMusicSongs];
String[] filePathNameSoundEffect = new String [numberSoundEffects];
AudioPlayer playlist;
AudioPlayer soundEffect;

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
  println(appWidth, appHeight);
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
  String clownCar = "clown-car-made-with-Voicemod";
  String path3 = sketchPath( pathwaySoundEffects + clownCar + extension);


  //
  String extension2 = ".jpg";
  String meteoraAlbumCover = "Linkin_Park_Meteora_Album_Cover";
  String hybridTheory = "Linkin_Park_Hybrid_Theory_Album_Cover";
  String backgroundImageName = hybridTheory;
  String pathway = "../Images/";
  String path2 = pathway + backgroundImageName + extension2;
  pathLightBackgroundImage = pathway + meteoraAlbumCover + extension2;
  pathDarkBackgroundImage = pathway +  hybridTheory + extension2;
  backgroundImage = loadImage(path2) ;
  // println( path );
  soundEffects1 = minim.loadFile( path );
  soundEffects2 = minim.loadFile( path3);
  playlist1 = minim.loadFile( path );
  //playlistMetaData = playlist.getMetaData();
  
  String musicpath = "../Music/";
  String Start_Your_Engines= "Start_Your_Engines";
//  String pathStart_Your_EnginesMUSIC = sketchPath ( musicpath+Start_Your_Engines+extension); 
//  playlist[currentSong] = minim.loadFile(pathStart_Your_EnginesMUSIC);
 // println ( musicpath + Start_Your_Engines + extension);
 
   String Ghost_Walk = "Ghost_Walk"; 
 //  String pathGhost_Walk = sketchPath ( musicpath+Ghost_Walk+extension);
//   playlist[currentSong+=1]= minim.loadFile(pathGhost_Walk);
//println( "Random:", int(random(-1,8)));
  filePathNameMusic[currentSong] = musicpath+Start_Your_Engines+extension;
  filePathNameMusic[currentSong+=1] = musicpath+Ghost_Walk+extension;
  
  String MtoM = "Minutes_to_Midnight_cover" ;
  String pathway3 = "../Images/";
  albumCoverPath = pathway3 + MtoM + extension2 ;
 // albumCover1= loadImage( albumCoverPath );
  
  String DoomGuy = "Friendly_Fire.jpg";
  albumCoverPath2 = pathway3 + DoomGuy;
 // albumCover2 = loadImage(albumCoverPath2);
  
  String PLAY = "download";
  String pathway4 = "../Images/";
  playButtonPath = pathway4 + PLAY + extension2;
  playButton1= loadImage(playButtonPath);
  
  String ReWind = "56280201.png";
  String pathway5 = "../Images/";
  Rewind = pathway5 + ReWind;
  REWIND = loadImage( Rewind );
  
  String fastForward = "5628020.png";
  fastF = pathway4+ fastForward;
  FastF = loadImage(fastF);

  String settings = "images.jfif.ca";
  settingspath = pathway4 + settings + extension2;
  Gear = loadImage(settingspath);
  //
  String doorOpen = "istockphoto-504739809-612x612.jpg";
  DoorOpen = pathway4 + doorOpen;
  exitOpenDoor = loadImage(DoorOpen);
  //
  String doorClosing = "images";
  String pathTest1 = "../Images/";
  doorclose =  pathTest1 + doorClosing + extension2;
  DoorClosed = loadImage(doorclose);
 
  String Start2 = "download2.jpg";
  StartButton = pathway4 + Start2 ;
  playButton2 = loadImage(StartButton);
  //
  String ReWiNd = "5628020121.png";
  REwind2 = pathway4 + ReWiNd;
  REWIND2 = loadImage(REwind2);
  
  String FF = "562802012.png";
  fastforward2= pathway4 + FF;
  FASTF2 = loadImage(fastforward2);
  
 //
 String Gear2 = "images1.jfif.ca.jpg";
 gear2 = pathway4 + Gear2;
 GEAR2 = loadImage(gear2);
  //
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
  //LEFT: X-value of image same as rect()
  // CENTERED: X-value of image = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
  // RIGHT: X-value of image = albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;

  albumCoverRIGHT = albumCoverX;
  albumCoverCENTERED = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2 ;
  albumCoverLEFT =albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
  //
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);//
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //  //
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
  // if ( whiteMode==true && hour()>=8 && hour()<=21 ) {
  if ( hour()>=8 && hour()<=21 ) dayMode=true;
  if ( dayMode==true && lightMode==true ) { //Light & Dark Modes
    backgroundColour = whiteBackground;
    foregroundColour = darkBackground;
    backgroundImage = loadImage( pathLightBackgroundImage ); //Changing this Variable with 3 different images
  } else if ( lightMode==false ) {
    backgroundColour = darkBackground;
    foregroundColour = whiteBackground;
    backgroundImage = loadImage( pathDarkBackgroundImage );
  } else {
    backgroundColour = darkBackground;
    foregroundColour = Orange;
    backgroundImage = loadImage( pathDarkBackgroundImage );
  }
  //
    println(currentSong, filePathNameMusic[currentSong]);
    currentSong = numberMusicSongs-numberMusicSongs;
  playlist =  minim.loadFile( filePathNameMusic[currentSong] ); // "" is compiler error
} //End setup
//
void draw() {
int skip = 10000;   
    if (playlist.position()< 10000); 
    if (playlist.position()>= 10000 && playlist.position()<=playlist.length()*0.35)playlist.skip(skip); 
    if (playlist.position()> playlist.length()*0.35  );
      println(currentSong, filePathNameMusic[currentSong]);
     playlist.pause();
      playlist.rewind();
      if ( currentSong>=numberMusicSongs-1) {
      currentSong=0;
    } else {
    currentSong++; 
  }
  if (!playlist.isPlaying()){  if (playlist.position()< 10000); 
    if (playlist.position()>= 10000 && playlist.position()<=playlist.length()*0.35)playlist.skip(skip); 
    if (playlist.position()> playlist.length()*0.35  );
      println(currentSong, filePathNameMusic[currentSong]);
     playlist.pause();
      playlist.rewind();
      if ( currentSong>=numberMusicSongs-1) {
      currentSong=0;
    } else {
    currentSong++; 
     playlist =  minim.loadFile( filePathNameMusic[currentSong+=1] ); // "" is compiler error
      playlist.play();
  }
}else{ 
  //??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??//??
}
     
  /* background(0); // day mode light mode ON /OFF
   // light mode ON = max saturation and max color
   if (lightMode == true) { // need key bind
   brightness = 255;
   } else {
   brightness = 100;//userpreference smallest brightness
   }
   tint(255, 255, 255, 0);
   */
  if ( dayMode=true && lightMode == true ) { //Boolean keyBind, Logical Shortcut
    //CAUTION: See setup
    backgroundImage = loadImage( pathLightBackgroundImage );
  } else if ( lightMode == false ) {
    backgroundImage = loadImage( pathDarkBackgroundImage );
  } else {
    tint(255, 255, 255, 0); //no blue;
  }
  if ( albumCover3 == false){
    albumCover1 = loadImage ( albumCoverPath );
  } else { 
    albumCover1 = loadImage(  albumCoverPath2);
  }
  //

  //
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
    image(exitOpenDoor, exitX, exitY, exitWidth, exitHeight);
    fill(foregroundColor);
  } else {
    fill(purple);
image( DoorClosed, exitX, exitY, exitWidth, exitHeight );
  }
/*
  fill(Aqua);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;
  textFont(generalFont, size);
  text (exit, exitX, exitY, exitWidth, exitHeight);
*/
  fill(Orange);
  rect(currentSongX, currentSongY, currentSongWidth, currentSongHeight);
  fill(purple);
  textAlign(CENTER, CENTER);
  int size = 25;
  textFont(generalFont, size);
 //println ( playlistMetaData[currentSong].title());
 // text (playlistMetaData[currentSong].title(), currentSongX, currentSongY, currentSongWidth, currentSongHeight); 
  //
  //
  fill(Orange);//Ink
  textAlign(CENTER, CENTER); //Align X&Y see processing.org / refernce
  //values:left center righ or top center bottom baseline.
  size = 25;

  fill(green);
  rect(startX, startY, startWidth, startHeight);
  image(playButton1, startX, startY, startWidth, startHeight);
if (mouseX>startX && mouseX<startX+startWidth && mouseY>startY && mouseY<startY+startHeight ) {
    fill(Orange);
    image(playButton2, startX, startY, startWidth, startHeight);
    fill(foregroundColor);
  } else {
    fill(purple);
image(playButton1, startX, startY, startWidth, startHeight);
  } 
  
  fill(green);
  rect(rewindX, rewindY, rewindWidth, rewindHeight);
  //
if (mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight ) {
    fill(Orange);
image(REWIND2,rewindX, rewindY, rewindWidth, rewindHeight);
    fill(foregroundColor);
  } else {
    fill(purple);
image(REWIND,rewindX, rewindY, rewindWidth, rewindHeight);
  } 
  //
  //
  fill(green);
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
  image(FastF, fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
  if (mouseX>fastForwardX && mouseX<fastForwardX+fastForwardWidth && mouseY>fastForwardY && mouseY<fastForwardY+fastForwardHeight ) {
    fill(Orange);
image(FASTF2, fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
    fill(foregroundColor);
  } else {
    fill(purple);  
  image(FastF, fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
  }
  
  // fill(purple);
  // rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  // fill(green);
  // textAlign(CENTER, CENTER);
  // size = 25;
  // textFont(generalFont, size);
  //  text (albumCover, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
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
  image(Gear, settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);
 if (mouseX>settingsGearX && mouseX<settingsGearX+settingsGearWidth && mouseY>settingsGearY && mouseY<settingsGearY+settingsGearHeight ) {
    fill(Orange);
   image(GEAR2, settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);
  } else {
    fill(purple);
image(Gear, settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);
  }
  
  
  fill(Aqua);
  rect(volumeBarX, volumeBarY, volumeBarWidth, volumeBarHeight);

  image( albumCover1, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  // add adjusted stuff later
  // albumCoverCENTER,  instead of x            Add adjusted for width and height.
  //
  fill(foregroundColor);
  
    println("song position", playlist.position(), "song length", playlist.length());
  println (playlist.isMuted());

  //  playlist[currentSong].loop(0);

  if ( playlist.isLooping() && playlist.loopCount()!=-1 ) println("There are", playlist.loopCount(), "loops left.");
  if ( playlist.isLooping() && playlist.loopCount()==-1 ) println("Looping Infinitely");
  println(looping);
  if ( !playlist.isPlaying() ) println( "nothing is playing, PICK A SONG NOW!!!!!!!!!!!!!!!!!!" );
  if ( playlist.isPlaying() && !playlist.isLooping() ) println("Play Once");
  //
if (playlist.isMuted()) {
  if (playlist.isPlaying()) 
  playlist.mute();
} else {
  playlist.unmute();
}

   if ( playlist.isPlaying() ) {
    //Empty IF, TRUE
    //if (  ) {}
  } else if ( looping== false && !playlist.isPlaying() && playlist.length() < 60000 ) {
    playlist .rewind();
  } else if ( looping== false && !playlist.isPlaying() && ( playlist.position() > playlist.length()*0.75 ) ) {
    //true if 75% player restart
    //currentSong at end of FILE
    playlist.rewind();
    //currentSong = currentSong + 1; //currentSong++; currentSong+=1
    // playlist[currentSong].play();
  } else {
     /* Future coding
     currentSong = currentSong + 1; //currentSong++; currentSong+=1
     playlist.play();
     */
  }
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
  if (key=='Q' || key=='q') soundEffects2.loop(3);
  if (key=='?')  soundEffects1.loop(5000);

  if ( key=='Z' || key=='z' ) { //Day Mode, White Light Containing Blue Colour
    if (  lightMode == false ) {
      lightMode = true;  //Light Mode ON
    } else {
      lightMode = false; //Dark Mode ON, no darkMode Boolean required
    }
    /* }
     if (key=='A' || key=='a') {
     if (  whiteMode == false ) {
     whiteMode = true;  //Light Mode ON
     } else {
     whiteMode = false; //Dark Mode ON, no darkMode Boolean required
     }*/
      if ( key == 'P' || key == 'p' ) { //play pause button feature !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    //
    if ( playlist.isPlaying()) {
      playlist.pause();
    } else {
      playlist.play();
    }
  } //END play pause button
 // if(key == 'U' || key == 'u') playlist[currentSong].mute;
//if (key == 'J' || key == 'j') playlist[currentSong].unmute;
if ( key == 'M' || key == 'm') { 
  if (playlist.isMuted()) playlist.unmute();
} else { 
  playlist.mute();
}
if (playlist.isMuted())
  
  if ( key =='L' || key == 'l') {
    playlist.loop(1);
    looping = true;
  } // END LOOP ONCE
  if (key == 'I' || key == 'i') {
    playlist.loop();
    looping = true;
  } // END LOOP INFINITY
  if (key == 'O' || key == 'o' ) {
   playlist .pause();
   playlist .rewind();// ALERT ALERT affects loop amount and makes it break ALERT ALERT
} // END STOP BUTTON 
  //
  int skip = 10000;//Local
  
  if(key == 'R' || key == 'r')playlist.skip(-skip);
  if(key == 'F' || key == 'f')playlist.skip(skip);
  //if (key == 'E'|| key == 'e')skip = 20000;
 // if (key == 'D'|| key == 'd')skip = 10000;
//  if (key == 'E'|| key =='e'){
// if(skip==10000) { skip = playlist[currentSong].length()*0.10);
//}else{
//    skip=5000  }
//}
  }
  //End Day Mode
  //End Night Mode
  
  if(key == 'A' || key =='a'){
    albumCover3 = true;
  }else{
  albumCover3 = false; 
}
if ( key=='M'|| key=='m') {currentSong =  int(random(0, numberMusicSongs));
  println(currentSong, filePathNameMusic[currentSong]);
playlist.pause();
playlist.rewind();
  playlist =  minim.loadFile( filePathNameMusic[currentSong] ); // "" is compiler error
  playlist.play();
} 


} //End keyPressed
//
void mousePressed() {      //Listener
int skip = 10000;
  if ( mouseX>exitX && mouseX<exitX+exitWidth && mouseY>exitY && mouseY<exitY+exitHeight )
  {
    soundeffect_1();
  }
  if (mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY< rewindY+rewindHeight)
  {
    if (skip == 10000)
    
    playlist.rewind();
    playlist.pause();
  }
  if (mouseX>fastForwardX && mouseX<fastForwardX+fastForwardWidth && mouseY>fastForwardY && mouseY<fastForwardY+fastForwardWidth)
  {
    if (playlist.position()< 10000); 
    if (playlist.position()>= 10000 && playlist.position()<=playlist.length()*0.35)playlist.skip(skip); 
    if (playlist.position()> playlist.length()*0.35  );{
      println(currentSong, filePathNameMusic[currentSong]);
     playlist.pause();
      playlist.rewind();
      if ( currentSong>=numberMusicSongs-1) {
      currentSong=0;
    } else {
    currentSong++; 
  }
      playlist =  minim.loadFile( filePathNameMusic[currentSong+=1] ); // "" is compiler error
      playlist.play();
     
  println(currentSong, filePathNameMusic[currentSong]);
    }
    //playlist.skip(skip);
  }
  
  //
  if (mouseX>startX && mouseX<startX+startWidth && mouseY>startY && mouseY<startY+startHeight)
  { if( playlist.isPlaying())
    playlist.pause();
  } else {
    playlist.play();
  }
 
  if(mouseX>settingsGearX && mouseX<settingsGearX+settingsGearWidth && mouseY>settingsGearY && mouseY<startY+settingsGearWidth)
  { 
   // link( https://wmonk57.github.io/Sandbox-Music-Player-Promo.github.io/);
  }
  //
} //End mousePressed
//
//rewindX, rewindY, rewindWidth, rewindHeight
// End MAIN Program
//255,68,0
