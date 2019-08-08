// Using Atan2 to get Angle To Point
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

void setup(){
  size(200,200);
}

void draw(){
  background(255,255,255);
  
  float range = 50;
  
  //pointing form 0,0 to the mouse
  //atan2 takes Y then X, which is weird but that's how it works
  float angle1 = atan2(mouseY, mouseX);
  float x1 = cos(angle1) * range;
  float y1 = sin(angle1) * range;
  
  line (0,0, x1, y1);
  ellipse(x1,y1,5,5);
  
  //pointing from a specific point requires a little math in the atan2 function
  float anchor_x = width/2;
  float anchor_y = height/2;
  float angle2 = atan2(mouseY-anchor_y, mouseX-anchor_x);
  float x2 = anchor_x + cos(angle2) * range;
  float y2 = anchor_y + sin(angle2) * range;
  
  line(anchor_x, anchor_y, x2, y2);
  ellipse(x2,y2,5,5);
  
}