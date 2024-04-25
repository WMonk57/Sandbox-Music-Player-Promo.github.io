//global variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float rewindX, rewindY, rewindWidth, rewindHeight;
float fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight;
float startX, startY, startWidth, startHeight;
float settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight;
float songBarThingX, songBarThingY, songBarThingWidth, songBarThingHeight;
float exitX, exitY, exitWidth, exitHeight;
float currentSongX, currentSongY, currentSongWidth, currentSongHeight;
float timeLeftX, timeLeftY, timeLeftWidth, timeLeftHeight;
float volumeBarX, volumeBarY, volumeBarWidth, volumeBarHeight;
void divs() {
  population();
  drawRects();
}//End DIVS
//
void population() {
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
  rewindWidth = appWidth*0.75/14;
  rewindHeight = appHeight*1/12;
  fastForwardX = appWidth*9/14;
  fastForwardY =  appHeight*10/12;
  fastForwardWidth = appWidth*0.75/14;
  fastForwardHeight = appHeight*1/12;
  startX = appWidth*6.5/14;
  startY =  appHeight*10/12;
  startWidth = appWidth*0.75/14;
  startHeight = appHeight*1/12;
  settingsGearX =appWidth*12/14;
  settingsGearY = appHeight*10/12;
  settingsGearWidth = appWidth*0.75/14;
  settingsGearHeight = appHeight*1/12;
  songBarThingX = appWidth*2/10;
  songBarThingY  = appHeight*8.5/11;
  songBarThingWidth = appWidth*6/10;
  songBarThingHeight = appHeight*0.5/11;
  exitX = appWidth*9.25/10;
  exitY  = appHeight*0.25/10;
  exitWidth = appWidth*0.75/14;
  exitHeight = appHeight*1/12;
  currentSongX =appWidth*2.5/10;
  currentSongY  = appHeight*0.15/11;
  currentSongWidth = appWidth*6.5/14;
  currentSongHeight = appHeight*0.5/12;
  timeLeftX = appWidth*8.25/10;
  timeLeftY  = appHeight*8.5/11;
  timeLeftWidth = appWidth*.75/10;
  timeLeftHeight = appHeight*0.5/11;
  volumeBarX = appWidth*0.5/15;
  volumeBarY  = appHeight*1/11;
  volumeBarWidth = appWidth*0.5/15;
  volumeBarHeight = appHeight*7/11;
  //
} //End population
//
void drawRects() { //Layout DIVs
  //rect(X, Y, Width, Height);
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //int centerX= appWidth *1/2;
  //int centerY= appHeight *1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);

  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);//
  rect(rewindX, rewindY, rewindWidth, rewindHeight);//
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);//
  rect(startX, startY, startWidth, startHeight);//
  rect(settingsGearX, settingsGearY, settingsGearWidth, settingsGearHeight);//
  rect(songBarThingX, songBarThingY, songBarThingWidth, songBarThingHeight);//
  rect(exitX, exitY, exitWidth, exitHeight);//
  rect(currentSongX, currentSongY, currentSongWidth, currentSongHeight);//
  rect(timeLeftX, timeLeftY, timeLeftWidth, timeLeftHeight);//
  rect(volumeBarX, volumeBarY, volumeBarWidth, volumeBarHeight);//
  /*
rect(nextSongX, nextSongY, nextSongWidth,nextSongHeight);
   rect(nextSongAlbumCoverX, nextSongAlbumCoverY, nextSongAlbumCoverWidth, nextSongAlbumCoverHeight);
   rect(nextSongBoxPopUpThingX, nextSongBoxPopUpThingY, nextSongBoxPopUpThingWidth, nextSongBoxPopUpThingHeight);
   rect(nextSongLengthX, nextSongLengthY, nextSongLengthWidth, nextSongLengthHeight);
   rect(closeNextSongX, closeNextSongY, closeNextSongWidth, closeNextSongHeight);
   */
} //End Draw Rectangles
//
//End Divs subProbram
