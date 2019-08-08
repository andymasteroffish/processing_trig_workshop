// Orbitting a Point
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

float angle2;

void setup(){
  size(400,400);
  angle2 = 0;
}

void draw(){
  background(255, 255, 255);  //comment this out for some fun visuals
  
  float range = 100;
  float angle1 = millis() / 1000.0;
  
  //anchor_x and anchor_y represent how far from 0,0 we want to move the center of our orbit
  float anchor_x = mouseX;
  float anchor_y = mouseY;
  
  float x1 = anchor_x + cos(angle1) * range;
  float y1 = anchor_y + sin(angle1) * range;
  
  ellipse(x1, y1, 40,40);
  
  //another circle with angle controlled by key pressess
  float range2 = 120;
  float x2 = anchor_x + cos(angle2) * range2;
  float y2 = anchor_y + sin(angle2) * range2;
  
  ellipse(x2,y2, 40,40);
}

void keyPressed(){
  if (key == 'a'){
    angle2 -= 0.2;
  }
  if (key == 'd'){
    angle2 += 0.2;
  }
}