class Enemy {
  float xpos = random(0, 700);
  int ypos = 0;
  int radius = 20;
  
  void fall() {
    ypos += 1;
  }
  
  void display() {
    noStroke();
    fill(0, 255, 255);
    ellipse(xpos, ypos, radius, radius);
  }
}
  
class Player {
  int xpos1;
  int ypos1 = 875;
  int rectW = 20;
  int rectH = 30;
  int endpoint=0;
  boolean mark= false;
  
  
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
   
  void check(Enemy enemy){
    if (enemy.xpos-xpos1>-10 && enemy.xpos-xpos1<30){
      endpoint=enemy.ypos+10;
      enemy.ypos=0;
      enemy.xpos=random(0, 700);
      counter+=1;
    }
  }
      
  void fire(){
    stroke(255,0,0);
    strokeWeight(5);
    line(xpos1,ypos1,xpos1+10,endpoint);
  }
}