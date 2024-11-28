ArrayList <bullet> bullets = new ArrayList <bullet>(); 
int bulletId = 0;
int bulletToDelete;
void setup() { 
  size(1024,720);
}
void draw() {
 background(255); 
 fill(0);
 ellipse(1024/2,720/2,15,15);
 fill(255);
 spawnBullet();
 for(bullet part : bullets) {
  part.update(); 
 }

 
// for(int i = 0; i < bullets.size(); i++) {
  
 //}
}
void spawnBullet() {
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2)),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*2),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*3),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*4),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*5),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*6),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*7),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*8),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI/10*9),3,bulletId));
  bullets.add(new bullet(1024/2,720/2,atan2(mouseY-(720/2),mouseX-(1024/2))-(2*PI),3,bulletId));
  
  bulletId++;
}

class bullet {
  float xpos, ypos, spd, ang;
  int idB;
  bullet (float x, float y, float a, float s, int id){
   xpos = x;
   ypos = y;
   ang = a;
   spd = s;
   idB = id;
  }
  void update(){
// speedApplied = spd + acc
  ypos += (cos(ang - PI/2)*spd*5);
  xpos -= (sin(ang - PI/2)*spd*5);
    fill(0);
    ellipse(xpos, ypos, 10,10);
    fill(255);
    
     
  }
}
