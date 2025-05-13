
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
PFont appFont;
float fontSize;
//
float titleX, titleY, titleWidth, titleHeight;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
  //
  minim = new Minim(this);
  String musicPathway = "Music/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String song = "Ghost_Walk.mp3";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + musicPathway;
  String file = musicDirectory + song + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
  //Music Testing
  playList[currentSong].play();
  //
  /*Fonts from OS
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  fontSize = shorterSide; //changed int to float for strongly formatted language
  appFont = createFont("Harrington", fontSize);
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug ( not loadFont() )
  //
  //Population
  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  titleWidth = appWidth*1/2;
  titleHeight = appHeight*1/10;
  //
  //DIVs
  rect(titleX, titleY, titleWidth, titleHeight);
  //
  //Font Size Algorithm
  float harringtonAspectRatio = 1.04; //AR = fontSize / rect(Height), unique for each font
  fontSize = titleHeight * harringtonAspectRatio; //Extra Value "Cuts the Mullet OFF"
  textFont(appFont, fontSize); //see variable note
  println( textWidth( playListMetaData[currentSong].title() ), titleWidth );
  while ( textWidth( playListMetaData[currentSong].title() ) > titleWidth  ) {
    fontSize = fontSize * 0.99;
    textFont(appFont, fontSize); //see variable note
    println( "Step:", textWidth( playListMetaData[currentSong].title() ), titleWidth );
  }
  //
  //Code before Drawing Text
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(appFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text( playListMetaData[currentSong].title() , titleX, titleY, titleWidth, titleHeight);
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
  //
} //End Setup
//
void draw() {
  //EMPTY Draw
} //End Draw
//
void mousePressed() {} //End Mouse Pressed
 //mouseX> && mouseX< && mouseY> && mouseY<
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    if ( quitDoubleClick==false ) {
      for ( int i=0; i<rectNumber; i++ ) {
        println("Rectangle", i + " (%):", int( (divX[i]/appWidth)*100 ), int( (divY[i]/appHeight)*100 ), int( (divWidth[i]/appWidth)*100 ), int( (divHeight[i]/appHeight)*100 ) );
      }
    }
    noLoop(); //First QUIT Click enables printScreen in OS
    if ( quitDoubleClick==true ) exit(); //Second QUIT Closes CANVAS
    quitDoubleClick=true;
  } //End Quit Button
  if ( mouseX>beginningRectButtonX && mouseX<beginningRectButtonX+beginningRectButtonWidth && mouseY>beginningRectButtonY && mouseY<beginningRectButtonY+beginningRectButtonHeight ) {
    drawNewRect=true;
  } //End Rect() Grab
  //
  //Resize Width & Height
  for ( int i=0; i<rectNumber; i++ ) {
    if ( mouseX>divX[i] && mouseX<divX[i]+divWidth[i] && mouseY>divY[i] && mouseY<divY[i]+divHeight[i] ) {
      resizeWidth=resizeHeight=true;
      newXTemp = mouseX;
      newYTemp = mouseY;
      newWidthTemp = divWidth[i];
      newHeightTemp = divHeight[i];
      rectWidthChange = rectHeightChange = i;
      deleteRectActivated=true;
      deleteThisRect=i;
    }
  //
 //End mousePressed
//
void keyPressed() {} //End Key Pressed
  if ( drawNewRect==true ) {
    divX[rectNumber] = newX;
    divY[rectNumber] = newY;
    divWidth[rectNumber] = newWidth;
    divHeight[rectNumber] = newHeight;
    newX = newY = 0;
    drawNewRect = false;
    rectNumber++;
    divX = append(divX, 0);
    divY = append(divY, 0);
    divWidth = append(divWidth, 0);
    divHeight = append(divHeight, 0);
  } //End Placing Rectangle
  //
  if ( resizeWidth==true ) {
    divWidth[rectWidthChange] = newWidthTemp + ( mouseX-newXTemp ) ;
    resizeWidth=false;
  } //End Resize Width
  if ( resizeHeight==true ) {
    divHeight[rectHeightChange] = newHeightTemp + ( mouseY-newYTemp );
    resizeHeight=false;
  } //End Resize Height
  //
} //End Mouse Release
//
void keyPressed() {
  //Currently deletes most recent rectangle, nothing more
  divX = shorten(divX);
  divY = shorten(divY);
  divWidth = shorten(divWidth);
  divHeight = shorten(divHeight);
  rectNumber--;
  //
} //End keyPressed

//End
