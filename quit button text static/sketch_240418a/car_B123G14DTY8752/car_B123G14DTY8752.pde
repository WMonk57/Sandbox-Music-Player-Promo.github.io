/*purpose
-introduce single and multiple executed code
-activity: do another rectangle with text in it 
-copy and paste to dynamic program
*/
//
//global variables
float titleX, titleY, titleWidth, titleHeight; 
//
//display geometry, display orientation:landscape  portrait, square
fullScreen();
//concatenation & inspection of variables.
println("Display Monitor:", "width: "+displayWidth, "\theight:", displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//population
titleX = appWidth*1/10;
titleY =  appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//
//single executed code:Font SETUP
//
// Divs and rect()s
rect(titleX, titleY, titleWidth, titleHeight);
//rect(footerX, footerY, footerWidth, footerHeight
//
//Repeated Code: draw()ing text
