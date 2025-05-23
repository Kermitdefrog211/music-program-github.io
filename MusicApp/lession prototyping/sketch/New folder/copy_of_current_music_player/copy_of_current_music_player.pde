import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Library - Minim
//
//Global Variables

float playX1, playY1, playX2, playY2, playX3, playY3;
float playX1, playX2, playX3,

float playDivY,buttonY,playDivWidth,playDivHeight,widthOfButton;

int appWidth, appHeight;
float imageX, imageY, imageWidth, imageHeight;
float closeX, closeY, closeWidth, closeHeight;
float imgX, imgY, imgWidth, imgHeight;
float mscbarX, mscbarY, mscbarWidth, mscbarHeight;
float triX, triY, triWidth, triHeight;
float repX, repY, repWidth, repHeight;
float goX, goY, goWidth, goHeight;
float backX, backY, backWidth, backHeight;
float preX, preY, preWidth, preHeight;
float nexX, nexY, nexWidth, nexHeight;
float shufX, shufY, shufWidth, shufHeight;
float muteX, muteY, muteWidth, muteHeight;
float loop1X, loop1Y, loop1Width, loop1Height;
float loopinfX, loopinfY, loopinfWidth, loopinfHeight;

//OTHER STUFF BELOW

float artnameX, artnameY, artnameWidth, artnameHeight;
float songnameX, songnameY, songnameWidth, songnameHeight;
float timeleftX, timeleftY, timeleftWidth, timeleftHeight;
float timeremX, timeremY, timeremWidth, timeremHeight;
//float imageX, imageY, imageWidth, imageHeight; 
//float imageX, imageY, imageWidth, imageHeight; 

//END OF OTHER STUFF

void setup() {
  //Display
  fullScreen();
 int appWidth = displayWidth;
 int appHeight = displayHeight;
  //
  
 // imageX = appWidth*0.17;
 // imageY = appHeight*0.20;
 // imageWidth = appWidth*0.67;     
 // imageHeight = appHeight*0.15;
  
  closeX = appWidth*0.010;
  closeY = appHeight*0.010;
  closeWidth = appWidth* 0.04;
  closeHeight = appHeight * 0.07;
  //
  imgX = appWidth*0.33;
  imgY = appHeight*0.03;
  imgWidth = appWidth*0.30;
  imgHeight = appHeight*0.45;
  //
  mscbarX = appWidth*0.27;
  mscbarY = appHeight*0.57;
  mscbarWidth = appWidth*0.42;
  mscbarHeight = appHeight*0.02;
  
  triX = appWidth*0.44;
  triY = appHeight*0.60;
  triWidth = appWidth*0.09;
  triHeight = appHeight*0.15;
  
  repX = appWidth*0.467;
  repY = appHeight*0.762;
  repWidth = appWidth*0.04;
  repHeight = appHeight*0.07;
  
    goX = appWidth*0.54;
  goY = appHeight*0.60;
  goWidth = appWidth*0.04;
  goHeight = appHeight*0.07;
 
  backX = appWidth*0.39;
  backY = appHeight*0.60;
  backWidth = appWidth*0.04;
  backHeight = appHeight*0.07;
  
    preX = appWidth*0.32;
  preY = appHeight*0.60;
  preWidth = appWidth*0.04;
  preHeight = appHeight*0.07;
 
   nexX = appWidth*0.61;
  nexY = appHeight*0.60;
  nexWidth = appWidth*0.04;
 nexHeight = appHeight*0.07;
 
   shufX = appWidth*0.66;
  shufY = appHeight*0.60;
  shufWidth = appWidth*0.03;
  shufHeight = appHeight*0.05;
 
   muteX = appWidth*0.54;
  muteY = appHeight*0.70;
  muteWidth = appWidth*0.04;
  muteHeight = appHeight*0.07;

  //rect(X, Y Width, Height);
  
    loop1X = appWidth*0.39;
 loop1Y = appHeight*0.70;
  loop1Width = appWidth*0.04;
  loop1Height = appHeight*0.07;
  //rect(X, Y Width, Height);
  
   loopinfX = appWidth*0.347;
 loopinfY = appHeight*0.70;
  loopinfWidth = appWidth*0.04;
  loopinfHeight = appHeight*0.07;
  
  // OTHER STUFF BELOW 
  
   // imageX = appWidth*0.17;
 // imageY = appHeight*0.20;
 // imageWidth = appWidth*0.67;
 // imageHeight = appHeight*0.15;
  //rect(X, Y Width, Height);
  
   artnameX = appWidth*0.27;
  artnameY = appHeight*0.49;
  artnameWidth = appWidth*0.25;
  artnameHeight = appHeight*0.03;
  
   songnameX = appWidth*0.27;
  songnameY = appHeight*0.53;
  songnameWidth = appWidth*0.25;
  songnameHeight = appHeight*0.03;
  
  timeleftX = appWidth*0.21 ;
  timeleftY = appHeight*0.57;
  timeleftWidth = appWidth*0.05;
  timeleftHeight = appHeight*0.04;
  
   timeremX = appWidth*0.70 ;
  timeremY = appHeight*0.57;
  timeremWidth = appWidth*0.05;
  timeremHeight = appHeight*0.04;
  
  //END OF OTHER STUFF
  //
} //End setup
//
void draw() {
 
  //rect(imageX, imageY, imageWidth, imageHeight);
  //exit
  rect(closeX, closeY, closeWidth, closeHeight);
  //img
  rect(imgX, imgY, imgWidth, imgHeight);
 
  //
  rect(mscbarX, mscbarY, mscbarWidth, mscbarHeight);
  
  rect(triX, triY, triWidth, triHeight);
  
 rect(repX, repY, repWidth, repHeight);
  
  rect(goX, goY, goWidth, goHeight);
  
  rect(backX, backY, backWidth, backHeight);
  
  rect(preX, preY, preWidth, preHeight);
  
  rect(nexX, nexY, nexWidth, nexHeight);
  
  rect(shufX, shufY, shufWidth, shufHeight);
  
   rect(muteX, muteY, muteWidth, muteHeight);
   
    rect(loop1X, loop1Y, loop1Width, loop1Height);
    
     rect(loopinfX, loopinfY, loopinfWidth, loopinfHeight);
  

  //OTHER STUFF BELOW
  
   rect(artnameX, artnameY, artnameWidth, artnameHeight);
   rect(songnameX, songnameY, songnameWidth, songnameHeight);
   rect(timeleftX, timeleftY, timeleftWidth, timeleftHeight); 
    rect(timeremX, timeremY, timeremWidth, timeremHeight);
    //rect(imageX, imageY, imageWidth, imageHeight);
  
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
  
  
  
  
  //END OF OTHER STUFF

  //rect(imageX, imageY, imageWidth, imageHeight);
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Progravoid setup() {
  
