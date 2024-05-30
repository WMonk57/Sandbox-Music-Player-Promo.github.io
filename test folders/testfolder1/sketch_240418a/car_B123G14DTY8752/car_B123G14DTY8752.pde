/*purpose
-introduce single and multiple executed code
-activity: do another rectangle with text in it 
-copy and paste to dynamic program
*/
//
//global variables
float titleX, titleY, titleWidth, titleHeight; 
PFont titleFont;
String title= "AHHHHHHH SO SCARY AHHHHHHH IM SO SCARED";
String footer= "I Got The Fortnite Battle Pass";
int size;
color Aqua=#0AF5EF;
float footerX, footerY, footerWidth, footerHeight;
color orange=#FF4400;
PFont footerFont;
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
footerX = appWidth*1/10;
footerY  = appHeight*8/10;
footerWidth = appWidth*8/10;
footerHeight = appHeight*1/10;
//
//single executed code:Font SETUP
//Fonts from OS (operating system)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList);// onyx or wingdings
size =55;
titleFont = createFont("Times New Roman", size);
footerFont = createFont("Times New Roman", size);
//
// Divs and rect()s
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
//
//Repeated Code: draw()ing text
//Ink, hexidecimal aqua ink
fill(Aqua);//Ink
textAlign(CENTER,CENTER); //Align X&Y see processing.org / refernce
//values:left center righ or top center bottom baseline.
size = 55;
textFont(titleFont, size);
text (title, titleX, titleY, titleWidth, titleHeight);
text (footer, footerX, footerY, footerWidth, footerHeight);
//
//
fill(orange);//Ink
textAlign(CENTER,CENTER); //Align X&Y see processing.org / refernce
//values:left center righ or top center bottom baseline.
size = 55;
textFont(footerFont, size);
text (footerX, footerY, footerWidth, footerHeight);
