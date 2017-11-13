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
}

void draw() {
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
    