// Simple Tracking Foe Using Atan2
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10
//
// The object in this exmaple always points toward the target

float x;
float y;

float speed = 2;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
}

void draw(){
  background(255,255,255);
  
  float target_x = mouseX;
  float target_y = mouseY;
  
  float angle = atan2(target_y-y, target_x-x);
  
  x += cos(angle) * speed;
  y += sin(angle) * speed;
  
  ellipse(x,y, 40,40);
  //marker to show angle
  line(x,y, x+cos(angle)*20, y+sin(angle)*20);
  
}