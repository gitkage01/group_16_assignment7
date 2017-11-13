class Enemy {
  float xpos = random(0, 700);
  int ypos = 0;
  int radius = 20;
  
  void fall() {
    ypos += 1;
  }
  
  void display() {
    fill(0, 255, 255);
    ellipse(xpos, ypos, radius, radius);
  }
}
  
class Player {
  int xpos1;
  int ypos1 = 875;
  int rectW = 20;
  int rectH = 30;
  
  void display() {
    fill(255, 0, 255);
    rect(xpos1, ypos1, rectW, rectH);
  }
  
  void moveLeft() {
    xpos1 -= 20;
  }
  
  void moveRight() {
    xpos1 += 20;
  }
}