// Basic Movement Using Trig Functions
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

void setup(){
  size(400,400);
}

void draw(){
  background(255, 255, 255);
  
  //how far we want the balls to move from the center
  float range = 150;
  
  //using time to generate our angle. This will go up infititely and that's fine!
  float angle = millis() / 1000.0;
  
  println (sin(angle));
  
  //using cosine to generate an X position
  float x1 = width/2 + cos(angle) * range;
  float y1 = height/2;
  
  ellipse(x1,y1, 50,50);
  
  //using sine to generate a Y position
  float x2 = width/2;
  float y2 = height/2 + sin(angle) * range;
  
  ellipse(x2,y2, 50,50);
  
  //putting them together to get an orbit
  ellipse(x1,y2, 50,50);
  
}