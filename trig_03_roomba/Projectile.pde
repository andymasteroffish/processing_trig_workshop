class Projectile{
  
  float x;
  float y;
  float ang;
  
  float speed;
  
  Projectile(){
    x = 99999;    //start off screen
    y = 99999;
    ang = 0;
    speed = 7;
  }
  
  void reset(float start_x, float start_y, float new_angle){
    x = start_x;
    y = start_y;
    ang = new_angle;
  }
  
  void update(){
    x += cos(ang) * speed;
    y += sin(ang) * speed;
  }
  
  void draw(){
    fill(200,50,50);
    ellipse(x,y,10,10);
  }
}