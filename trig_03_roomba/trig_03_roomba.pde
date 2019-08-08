// Player Control Using Trig Functions
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10
//
// This exmaple allows a player to move and turn with WASD and includes a projectile class that uses the same rules to move

float x;
float y;
float ang;

float move_speed = 2;    //pixels
float turn_speed = 0.1;   //radians

//using booleans to track which keys are being held results in smoother movements as draw() will run more frequently than keyPressed()
boolean holding_left;
boolean holding_right;
boolean holding_forward;

Projectile bullet;

void setup(){
  size(500,500);
  
  x = width/2;
  y = height/2;
  ang = 0;
  
  bullet = new Projectile();
  
  holding_left = false;
  holding_right = false;
  holding_forward = false;
}

void draw(){
  background(255, 255, 255);
  
  //should we move?
  if (holding_left){
    ang -= turn_speed; 
  }
  if (holding_right){
    ang += turn_speed;
  }
  if (holding_forward){
    x += cos(ang) * move_speed;
    y += sin(ang) * move_speed;
  }
  
  //draw the player
  float radius = 25;
  fill(35,150,100);
  ellipse(x,y, radius*2,radius*2);
  
  //line to show where we're facing
  float line_x = x + cos(ang) * radius;
  float line_y = y + sin(ang) * radius;
  line(x,y, line_x, line_y);
  
  
  //deal with the bullet
  bullet.update();
  bullet.draw();
  
}

void keyPressed(){
  if (key == 'a'){
    holding_left = true;
  }
  if (key == 'd'){
    holding_right = true;
  }
  if (key == 'w'){
    holding_forward = true;
  }
  
  if (key == ' '){
    bullet.reset(x,y, ang);
  }
}

void keyReleased(){
  if (key == 'a'){
    holding_left = false;
  }
  if (key == 'd'){
    holding_right = false;
  }
  if (key == 'w'){
    holding_forward = false;
  }
}