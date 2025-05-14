import ddf.minim.*;

// Global Variables
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;

PFont appFont;
float fontSize;

// Title Rectangle Variables
float titleX, titleY, titleWidth, titleHeight;

// Quit Button Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
boolean quitDoubleClick = false;

// Rectangle Management
int rectNumber = 0;
float[] divX = new float[0];
float[] divY = new float[0];
float[] divWidth = new float[0];
float[] divHeight = new float[0];
boolean drawNewRect = false;

void setup() {
  size(700, 500);
  int appWidth = width;
  int appHeight = height;
  int shorterSide = (appWidth >= appHeight) ? appHeight : appWidth;

  // Initialize Minim
  minim = new Minim(this);
  String musicPathway = "Music/";
  String song = "Ghost_Walk.mp3";
  String musicDirectory = "../../../../" + musicPathway;
  String file = musicDirectory + song;
  println(file);

  // Load Music
  playList[currentSong] = minim.loadFile(file);
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  playList[currentSong].play();

  // Font Setup
  fontSize = shorterSide;
  appFont = createFont("Harrington", fontSize);

  // Title Rectangle
  titleX = appWidth * 1 / 4;
  titleY = appHeight * 1 / 4;
  titleWidth = appWidth * 1 / 2;
  titleHeight = appHeight * 1 / 10;

  // Quit Button
  quitButtonX = width - 100;
  quitButtonY = height - 50;
  quitButtonWidth = 80;
  quitButtonHeight = 30;

  // Adjust Font Size for Title
  float harringtonAspectRatio = 1.04;
  fontSize = titleHeight * harringtonAspectRatio;
  textFont(appFont, fontSize);
  while (textWidth(playListMetaData[currentSong].title()) > titleWidth) {
    fontSize *= 0.99;
    textFont(appFont, fontSize);
  }
}

void draw() {
  background(255);

  // Draw Title Rectangle
  fill(200, 200, 255);
  rect(titleX, titleY, titleWidth, titleHeight);

  // Draw Title Text
  fill(50, 50, 150);
  textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
  text(playListMetaData[currentSong].title(), titleX, titleY, titleWidth, titleHeight);

  // Draw Quit Button
  fill(255, 100, 100);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, 5);
  fill(255);
  textSize(12);
  textAlign(CENTER, CENTER);
  text("QUIT", quitButtonX + quitButtonWidth / 2, quitButtonY + quitButtonHeight / 2);

  // Draw Rectangles
  for (int i = 0; i < rectNumber; i++) {
    fill(100, 200, 100);
    rect(divX[i], divY[i], divWidth[i], divHeight[i]);
  }
}

void mousePressed() {
  // Quit Button Logic
  if (mouseX > quitButtonX && mouseX < quitButtonX + quitButtonWidth &&
      mouseY > quitButtonY && mouseY < quitButtonY + quitButtonHeight) {
    if (!quitDoubleClick) {
      println("Quit Button Clicked Once");
      noLoop(); // Pause the sketch
    } else {
      exit(); // Exit the sketch
    }
    quitDoubleClick = true;
    return;
  }

  // Add New Rectangle
  drawNewRect = true;
}

void mouseReleased() {
  if (drawNewRect) {
    divX = append(divX, mouseX - 50);
    divY = append(divY, mouseY - 25);
    divWidth = append(divWidth, 100);
    divHeight = append(divHeight, 50);
    rectNumber++;
    drawNewRect = false;
  }
}

void keyPressed() {
  // Delete the Most Recent Rectangle
  if (rectNumber > 0) {
    divX = shorten(divX);
    divY = shorten(divY);
    divWidth = shorten(divWidth);
    divHeight = shorten(divHeight);
    rectNumber--;
  }
}

void stop() {
  // Cleanup Minim
  for (int i = 0; i < numberOfSongs; i++) {
    if (playList[i] != null) {
      playList[i].close();
    }
  }
  minim.stop();
  super.stop();
}
