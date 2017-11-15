//pause loop manipulation inspired by examples on Processing.org

// 0: Initial Screen
// 1: Game Screen
// 2: Game Over Screen

int gameScreen = 0;
NewGame newGame;
Pause pause;

Enemy en1;
Enemy en2;
Enemy en3;
Enemy en4;
Enemy en5;
Enemy en6;

Player tank;

void setup() {
  size(700, 900);
  frameRate(60);
  rectMode(CENTER);
  en1 = new Enemy();
  en2 = new Enemy();
  en3 = new Enemy();
  en4 = new Enemy();
  en5 = new Enemy();
  en6 = new Enemy();

  tank = new Player();
  
  // Create new game and pause buttons
  newGame = new NewGame(350, 495, 150, 50, 150);
  pause = new Pause(600, 40, 50, 50, 255);
}

void draw() {
  if (gameScreen == 0) {
    initScreen();
    newGame.display(); //display new game Button
  } else if (gameScreen == 1) {
    gameScreen();
    pause.display();
    
    if (en1.ypos >= height | en2.ypos >= height | en3.ypos >= height | en4.ypos >= height | en5.ypos >= height | en6.ypos >= height) {
      gameScreen = 2;
    }
  } else if (gameScreen == 2) {
    gameOverScreen();
    reset();
  }
  
}

void mousePressed() {
  if (overButton(350, 495, 150, 50)) {
    gameScreen = 1;
  } else if (overButton(600, 40, 50, 50)) {
    if (looping) {
      noLoop();
    } else {
      loop();
    }
  } else if (gameScreen == 2) {
    gameScreen = 0;
  }
}

void reset() {
  //score = 0;
  en1.ypos = 0;
  en2.ypos = 0;
  en3.ypos = 0;
  en4.ypos = 0;
  en5.ypos = 0;
  en6.ypos = 0;
}

// Check whether mouse is hovering over the button area
boolean overButton(int xpos, int ypos, int widthval, int heightval) {
  if (mouseX >= xpos && mouseX <= xpos + widthval && mouseY >= ypos && mouseY <= ypos + heightval) {
    return true;
  } else {
    return false;
  }
}

// Initial game screen
void initScreen() {
  background(0, 255, 0);
  textAlign(CENTER);
  textSize(40);
  fill(0);
  text("Alien Game", width/2, height/2);
}

// Game play screen
void gameScreen() {
  background(0);
  en1.display();
  en1.fall();
  en2.display();
  en2.fall();
  en3.display();
  en3.fall();
  en4.display();
  en4.fall();
  en5.display();
  en5.fall();
  en6.display();
  en6.fall();
  
  tank.display();
  
}

// Game over screen
void gameOverScreen() {
  background(0, 140, 255);
  textAlign(CENTER);
  textSize(40);
  fill(0);
  text("Game Over", width/2, height/2);
  textSize(16);
  fill(0);
  text("Click to restart", width/2, height/2 + 30);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      tank.moveLeft();
    }
    if (keyCode == RIGHT) {
      tank.moveRight();
    }
  }
}