//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageX, imageY, imageWidth, imageHeight;
float closeX, closeY, closeWidth, closeHeight;
float imgX, imgY, imgWidth, imgHeight;
float mscbarX, mscbarY, mscbarWidth, mscbarHeight;
float triX, triY, triWidth, triHeight;
float repX, repY, repWidth, repHeight;
float goX, goY, goWidth, goHeight;
float backX, backY, backWidth, backHeight;
//float imageX, imageY, imageWidth, imageHeight;
//float imageX, imageY, imageWidth, imageHeight;
//float imageX, imageY, imageWidth, imageHeight;
//float imageX, imageY, imageWidth, imageHeight;

void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
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
  imgX = appWidth*0.34;
  imgY = appHeight*0.03;
  imgWidth = appWidth*0.30;
  imgHeight = appHeight*0.45;
  //
  mscbarX = appWidth*0.27;
  mscbarY = appHeight*0.57;
  mscbarWidth = appWidth*0.45;
  mscbarHeight = appHeight*0.02;
  
  triX = appWidth*0.44;
  triY = appHeight*0.60;
  triWidth = appWidth*0.09;
  triHeight = appHeight*0.15;
  
  repX = appWidth*0.463;
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
  
 // imageY = appHeight*0.20;
 // imageWidth = appWidth*0.67;
 // imageHeight = appHeight*0.15;
 
  // imageX = appWidth*0.17;
 // imageY = appHeight*0.20;
 // imageWidth = appWidth*0.67;
 // imageHeight = appHeight*0.15;
 
  //rect(X, Y Width, Height);
  //
} //End setup
//
void draw() {
  //rect(imageX, imageY, imageWidth, imageHeight);
  //exit
  rect(closeX, closeY, closeWidth, closeHeight);
  //img
  rect(imgX, imgY, imgWidth, imgHeight);
  //rect(25, 68.75, 72.5, 69);
  //pause/play
  //rect(43.75, imageY, imageWidth, imageHeight);
  //
  rect(mscbarX, mscbarY, mscbarWidth, mscbarHeight);
  
  rect(triX, triY, triWidth, triHeight);
  
 rect(repX, repY, repWidth, repHeight);
  
  rect(goX, goY, goWidth, goHeight);
  
  rect(backX, backY, backWidth, backHeight);
  
  //rect(imageX, imageY, imageWidth, imageHeight);
  
  //rect(imageX, imageY, imageWidth, imageHeight);
  
  //rect(imageX, imageY, imageWidth, imageHeight);
  
  //rect(imageX, imageY, imageWidth, imageHeight);
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
