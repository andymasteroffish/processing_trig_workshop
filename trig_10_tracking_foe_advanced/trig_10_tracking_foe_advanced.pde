// SComplex Tracking For Using Atan2
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10
//
// In this example, the object has a turning speed and will arc towards the target
// This requires some math th handle when the angle to the target goes onver the "seam" at 0 or TWO_PI
// Some quick calculation is done to determine if we should use a high or low value

float x;
float y;
float angle; 

float speed = 2;
float turn_speed = 0.08;


void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
  angle = 0;
}

void draw(){
  background(255,255,255);
  
  float target_x = mouseX;
  float target_y = mouseY;
  
  float target_angle = atan2(target_y-y, target_x-x);
  
  //because circles loop around, we may need to go a full circle around to get the actual closest value
  //for instance, TWO PI is closer to 0.01 than 0.5 is
  if ( abs(angle-target_angle) > abs(angle-(target_angle-TWO_PI))){
    target_angle = target_angle-TWO_PI;
  }
  if ( abs(angle-target_angle) > abs(angle-(target_angle+TWO_PI))){
    target_angle = target_angle+TWO_PI;
  }
  
  //adjust our angle to aproach our target
  if (angle < target_angle){
    angle += turn_speed; 
  }
  if (angle > target_angle){
    angle -= turn_speed;
  }
  
  //keep our angle in the same range than atan 2 will give us
  if (angle < -PI)  angle += TWO_PI;
  if (angle >  PI)  angle -= TWO_PI;
  
  //move!
  x += cos(angle) * speed;
  y += sin(angle) * speed;
  
  //draw!
  ellipse(x,y, 40,40);
  //marker to show angle
  line(x,y, x+cos(angle)*20, y+sin(angle)*20);
  
}