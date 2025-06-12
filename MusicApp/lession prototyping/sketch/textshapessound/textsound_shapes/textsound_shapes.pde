import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables

Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO]]]]
int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ;

String title = "Wahoo!";
println("Start of Console");

PFont titleFont = createFont("Harrington", shorterSide);

float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth = appWidth*1/2;
titleHeight = appHeight*1/10;
footerX = appWidth*1/4;
footerY = appHeight*3/4;
footerWidth = appWidth*1/2;
footerHeight = appHeight*1/10;
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
float fontSize = 53; //Change the number until it fits, largest font size, int only to ease guessing
println("Manual entered font size:", fontSize);

float harringtonAspectRatio = fontSize / titleHeight;
fontSize = titleHeight * harringtonAspectRatio;
//println("Aspect Ratio:", harringtonAspectRatio);
//println(); //Skip a line
float harringtonAspectRatio = fontSize / titleHeight;
fontSize = titleHeight * harringtonAspectRatio;

//Minimum Lines of code to format and draw text with colour
color purpleInk = #2C08FF;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); //see variable note

text(title, titleX, titleY, titleWidth, titleHeight); //Height Aspect Ratio 
text(footer, footerX, footerY, footerWidth, footerHeight); //No Wraparound, will not show
color whiteInk = #FFFFFF;
fill(whiteInk); //reset
println( "Text Width:", textWidth(title), "v rectWidth:", titleWidth ); //Always smaller or cut off, if text is drawn, always drawn
println( "Text Height:", fontSize, "v. rectHeight:", titleHeight ); //largest fontSize that will be draw, relative to rectHeight
println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight ); //Remember casting


float appWidth, appHeight;
float closeX, closeY, closeWidth, closeHeight;

float artnameX, artnameY, artnameWidth, artnameHeight;
float songnameX, songnameY, songnameWidth, songnameHeight;
float timeleftX, timeleftY, timeleftWidth, timeleftHeight;
float timeremX, timeremY, timeremWidth, timeremHeight;
float mscbarX, mscbarY, mscbarWidth, mscbarHeight;
//

float imgX, imgY, imgWidth, imgHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float stopDivX, stopDivY, stopDivWidth, stopDivHeight;
float muteDivX, muteDivY, muteDivWidth, muteDivHeight;
float previousDivX, previousDivY, previousDivWidth, previousDivHeight;
float fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight;
float pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight;
float loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight;
float fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight;
float nextDivX, nextDivY, nextDivWidth, nextDivHeight;
float shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight;

//Button Variables after
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3;
float fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6;
float pauseX1, pauseY1, pauseWidth1, pauseHeight1;
float pauseX2, pauseY2, pauseWidth2, pauseHeight2;
float muteTopPoint1X, muteTopPoint1Y, muteTopPoint2X, muteTopPoint2Y;
float muteDownPoint1X, muteDownPoint1Y, muteDownPoint2X, muteDownPoint2Y;
float muteBottomPoint1X, muteBottomPoint1Y, muteBottomPoint2X, muteBottomPoint2Y;
float muteUpPoint1X, muteUpPoint1Y, muteUpPoint2X, muteUpPoint2Y;
float muteCross1X1, muteCross1Y1, muteCross1X2, muteCross1Y2;
float muteCross2X1, muteCross2Y1, muteCross2X2, muteCross2Y2;
float prevX, prevY, prevWidth, prevHeight;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3;
float fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3;
float fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3;


  // Display
  fullScreen();
  //size(700, 500);
  int appWidth = displayWidth; //width
  int appHeight = displayHeight; //height
  int appShortSide = ( appWidth < appHeight ) ? appWidth : appHeight ;

  minim = new Minim(this);
  String upArrow = "../../../../../../";
  String MusicApp = "MusicApp/";
  String music = "music/";

  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String Eureka = "Eureka";
  String Cast_of_Pods = "Cast_of_Pods";

 String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + MusicApp + music;
  String file = musicDirectory + Eureka + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  String soundEffectsDirectory = upArrow + MusicApp + music;
  file = soundEffectsDirectory + Cast_of_Pods + fileExtension_mp3; //relative pathway or directory
  println( file );
  soundEffects[ numberOfSoundEffects-1 ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //One way to iterate through all Sound Effects
  //
  //Music Testing
  printArray(soundEffects); //Note registry Address on Hard Drive
  soundEffects[0].play();
  printArray(playList); //Note registry Address on Hard Drive
  //playList[currentSong].play();
  //
//End Setup

  imgX = appWidth*0.33;
  imgY = appHeight*0.03;
  imgWidth = appWidth*0.30;
  imgHeight = appHeight*0.45;


  // Draw Rectangles for UI Elements
  fill(200);
  rect(closeX, closeY, closeWidth, closeHeight); // Close Button
  rect(imgX, imgY, imgWidth, imgHeight); // Image Area
  rect(mscbarX, mscbarY, mscbarWidth, mscbarHeight); // Music Bar

  // Draw Text Areas
  fill(200);
  rect(artnameX, artnameY, artnameWidth, artnameHeight); // Artist Name
  rect(songnameX, songnameY, songnameWidth, songnameHeight); // Song Name
  rect(timeleftX, timeleftY, timeleftWidth, timeleftHeight); // Time Left
  rect(timeremX, timeremY, timeremWidth, timeremHeight); // Time Remaining




  //

  //
  //Population

  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/5;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height

  //
  //rect(DIV) is a square to start, by design
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  //println("Button Width:", appWidth/numberOfButtons);
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  stopDivX = beginningButtonSpace + widthOfButton*0;
  stopDivY = buttonY;
  stopDivWidth = widthOfButton;
  stopDivHeight = widthOfButton;
  //
  //STOP BUTTON
  stopButtonX = stopDivX + stopDivWidth*1/4;
  stopButtonY = stopDivY + stopDivHeight*1/4;
  stopButtonWidth = widthOfButton*1/2;
  stopButtonHeight = widthOfButton*1/2;
  //
  muteDivX = beginningButtonSpace + widthOfButton*1;
  muteDivY = buttonY;
  muteDivWidth = widthOfButton;
  muteDivHeight = widthOfButton;
  //
  //Mute Button
  //Note: population of MUTE could be based on first point
  muteTopPoint1X = muteDivX + muteDivWidth*1/4 ;
  muteTopPoint1Y = muteDivY + muteDivHeight*1/4 ;
  muteTopPoint2X = muteTopPoint1X + muteDivWidth*1/2 ; //based on beginning of line
  muteTopPoint2Y = muteTopPoint1Y ;
  muteDownPoint1X = muteDivX + muteDivWidth*3/4 ;
  muteDownPoint1Y = muteDivY + muteDivHeight*1/4 ;
  muteDownPoint2X = muteDownPoint1X; //based on beginning of line
  muteDownPoint2Y = muteDivY + muteDivHeight*3/4 ;
  muteBottomPoint1X = muteDivX + muteDivWidth*3/4 ;
  muteBottomPoint1Y = muteDivY + muteDivHeight*3/4;
  muteBottomPoint2X = muteDivX + muteDivWidth*1/4 ; //based on beginning of line
  muteBottomPoint2Y = muteDivY + muteDivHeight*3/4 ;
  muteUpPoint1X = muteDivX + muteDivWidth*1/4;
  muteUpPoint1Y = muteDivY + muteDivHeight*3/4;
  muteUpPoint2X = muteUpPoint1X ; //based on beginning of line
  muteUpPoint2Y = muteDivY + muteDivHeight*1/4;
  muteCross1X1 = muteTopPoint1X;
  muteCross1Y1 = muteTopPoint1Y;
  muteCross1X2 = muteBottomPoint1X;
  muteCross1Y2 = muteBottomPoint1Y;
  muteCross2X1 = muteUpPoint1X;
  muteCross2Y1 = muteUpPoint1Y;
  muteCross2X2 = muteDownPoint1X;
  muteCross2Y2 = muteDownPoint1Y;
  //
  previousDivX = beginningButtonSpace + widthOfButton*2;
  previousDivY = buttonY;
  previousDivWidth = widthOfButton;
  previousDivHeight = widthOfButton;
  //
  //Previous Button
  prevX = previousDivX + previousDivWidth*1/2 - previousDivWidth*1/8 ;
  prevY = previousDivY + previousDivHeight*1/4 ;
  prevWidth = previousDivWidth*1/8 ;
  prevHeight = previousDivHeight*1/2 ;
  prevX1 = previousDivX + previousDivWidth*3/4;
  prevY1 = previousDivY + previousDivHeight*1/4;
  prevX2 = previousDivX + previousDivWidth*1/2;
  prevY2 = previousDivY + previousDivHeight*1/2 ;
  prevX3 = prevX1 ;
  prevY3 = previousDivY + previousDivHeight*3/4;
  //
  fastRewindDivX = beginningButtonSpace + widthOfButton*3;
  fastRewindDivY = buttonY;
  fastRewindDivWidth = widthOfButton;
  fastRewindDivHeight = widthOfButton;
  //
  //fast rewind button
  fastRewindX1 = fastRewindDivX + fastRewindDivWidth*3/4 ;
  fastRewindY1 = fastRewindDivY + fastRewindDivHeight*1/4 ;
  fastRewindX2 = fastRewindDivX + fastRewindDivWidth*1/2 ;
  fastRewindY2 = fastRewindDivY + fastRewindDivHeight*1/2 ;
  fastRewindX3 = fastRewindX1 ;
  fastRewindY3 = fastRewindDivY + fastRewindDivHeight*3/4;
  fastRewindX4 = fastRewindDivX + fastRewindDivWidth*1/2 ;
  fastRewindY4 = fastRewindDivY + fastRewindDivHeight*1/4;
  fastRewindX5 = fastRewindDivX + fastRewindDivWidth*1/4 ;
  fastRewindY5 = fastRewindDivY + fastRewindDivHeight*1/2 ;
  fastRewindX6 = fastRewindX4 ;
  fastRewindY6 = fastRewindDivY + fastRewindDivHeight*3/4 ;
  //
  pauseDivX = beginningButtonSpace + widthOfButton*4;
  pauseDivY = buttonY;
  pauseDivWidth = widthOfButton;
  pauseDivHeight = widthOfButton;
  //
  //Pause Button
  pauseX1 = pauseDivX + pauseDivWidth*1/4;
  pauseY1 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth1 = pauseDivWidth*1/8;
  pauseHeight1 = pauseDivHeight*1/2;
  pauseX2 = pauseDivX + pauseDivWidth*5/8;
  pauseY2 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth2 = pauseDivWidth*1/8;
  pauseHeight2 = pauseDivHeight*1/2;
  //
  playDivX = beginningButtonSpace + widthOfButton*5;



  playDivY = buttonY;
  playDivWidth = widthOfButton;
  playDivHeight = widthOfButton;
  //
  //Play Button
  playX1 = playDivX + playDivWidth*1/4;
  playY1 = playDivY + playDivHeight*1/4;
  playX2 = playDivX + playDivWidth*3/4;
  playY2 = playDivY + playDivHeight*1/2;
  playX3 = playDivX + playDivWidth*1/4;
  playY3 = playDivY + playDivHeight*3/4;
  //
  loopOnceDivX = beginningButtonSpace + widthOfButton*6;
  loopOnceDivY = buttonY;
  loopOnceDivWidth = widthOfButton;
  loopOnceDivHeight = widthOfButton;
  //
  //loop once button
  //Note, this is a stop botton with a "one inside" & a triangle
  //CAUTION: this needs text
  loopOnceX = loopOnceDivX + loopOnceDivWidth*1/4 ;
  loopOnceY = loopOnceDivY + loopOnceDivHeight*1/4 ;
  loopOnceWidth = loopOnceDivWidth*1/2;
  loopOnceHeight = loopOnceDivHeight*1/2;
  loopOnceX1 = loopOnceDivX + loopOnceDivWidth*3/4 - loopOnceDivWidth*1/16 ;
  loopOnceY1 = loopOnceDivY + loopOnceDivHeight*1/4 - loopOnceDivHeight*1/16 ;
  loopOnceX2 = loopOnceDivX + loopOnceDivWidth*3/4 + loopOnceDivWidth*1/16 ;
  loopOnceY2 = loopOnceDivY + loopOnceDivHeight*1/4 ;
  loopOnceX3 = loopOnceX1 ;
  loopOnceY3 = loopOnceDivY + loopOnceDivHeight*1/4 + loopOnceDivHeight*1/16 ;
  //
  loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
  loopInfiniteDivY = buttonY;
  loopInfiniteDivWidth = widthOfButton;
  loopInfiniteDivHeight = widthOfButton;
  //
  //loop infinite button
  //Note: Loop infinite button is same as loop once, without text "1"
  //
  fastForwardDivX = beginningButtonSpace + widthOfButton*8;
  fastForwardDivY = buttonY;
  fastForwardDivWidth = widthOfButton;
  fastForwardDivHeight = widthOfButton;
  //
  //Fast Forward Button
  fastForwardX1 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY1 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX2 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY2 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX3 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY3 = fastForwardDivY + fastForwardDivHeight*3/4;
  fastForwardX4 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY4 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX5 = fastForwardDivX + fastForwardDivWidth*3/4;
  fastForwardY5 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX6 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY6 = fastForwardDivY + fastForwardDivHeight*3/4;
  //
  nextDivX = beginningButtonSpace + widthOfButton*9;
  nextDivY = buttonY;
  nextDivWidth = widthOfButton;
  nextDivHeight = widthOfButton;
  shuffleDivX = beginningButtonSpace + widthOfButton*10;
  shuffleDivY = buttonY;
  shuffleDivWidth = widthOfButton;
  shuffleDivHeight = widthOfButton;
  //


void draw() {
  background(50);

  rect(imgX, imgY, imgWidth, imgHeight);


  // Close Button
  closeX = appWidth * 0.010;
  closeY = appHeight * 0.010;
  closeWidth = appWidth * 0.04;
  closeHeight = appHeight * 0.07;

  // Image Area
  imageDivX = appWidth * 0.33;
  imageDivY = appHeight * 0.03;
  imageDivWidth = appWidth * 0.30;
  imageDivHeight = appHeight * 0.45;

  // Music Bar
  mscbarX = appWidth * 0.27;
  mscbarY = appHeight * 0.57;
  mscbarWidth = appWidth * 0.42;
  mscbarHeight = appHeight * 0.02;


  // Text Areas
  artnameX = appWidth * 0.27;
  artnameY = appHeight * 0.49;
  artnameWidth = appWidth * 0.25;
  artnameHeight = appHeight * 0.03;

  songnameX = appWidth * 0.27;
  songnameY = appHeight * 0.53;
  songnameWidth = appWidth * 0.25;
  songnameHeight = appHeight * 0.03;

  timeleftX = appWidth * 0.21;
  timeleftY = appHeight * 0.57;
  timeleftWidth = appWidth * 0.05;
  timeleftHeight = appHeight * 0.04;

  timeremX = appWidth * 0.70;
  timeremY = appHeight * 0.57;
  timeremWidth = appWidth * 0.05;
  timeremHeight = appHeight * 0.04;


 
  //rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only

  //
  //DIVs
  //rect(X, Y, Width, Height)
  println(imageDivX);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);  //*0
  rect(muteDivX, muteDivY, muteDivWidth, muteDivHeight); //*1
  rect(previousDivX, previousDivY, previousDivWidth, previousDivHeight); //*2
  rect(fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight); //*3
  rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight); //*4
  rect(playDivX, playDivY, playDivWidth, playDivHeight); //*5
  rect(loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight);
  rect(loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight);
  rect(fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight);
  rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
  rect(shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight);

  //
  //rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
  //MUTE: muteDivX, muteDivY, muteDivWidth, muteDivHeight
  line(muteTopPoint1X, muteTopPoint1Y, muteTopPoint2X, muteTopPoint2Y);
  line(muteDownPoint1X, muteDownPoint1Y, muteDownPoint2X, muteDownPoint2Y);
  line(muteBottomPoint1X, muteBottomPoint1Y, muteBottomPoint2X, muteBottomPoint2Y);
  line(muteUpPoint1X, muteUpPoint1Y, muteUpPoint2X, muteUpPoint2Y);
  line(muteCross1X1, muteCross1Y1, muteCross1X2, muteCross1Y2);
  line(muteCross2X1, muteCross2Y1, muteCross2X2, muteCross2Y2);

  //Previous Button
  rect(prevX, prevY, prevWidth, prevHeight);
  triangle(prevX1, prevY1, prevX2, prevY2, prevX3, prevY3);
 //Fast Rewind
  triangle(fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3);
  triangle(fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  rect(pauseX1, pauseY1, pauseWidth1, pauseHeight1);
  rect(pauseX2, pauseY2, pauseWidth2, pauseHeight2);
  triangle(fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3);
  triangle(fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6);
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  triangle(loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3);

}

void mousePressed() {
  
}
// Add interactivity here if needed


void keyPressed() {
  // Add keyboard interactions here if needed

}
