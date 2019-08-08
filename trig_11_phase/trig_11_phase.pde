// Phase Example
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10
//
// By having many objects move along the sine wave at slightly different speeds, mesmerizing patterns emerge

void setup(){
 size(500,500); 
}

void draw(){
  background(0,0,0);
  
  for (int i=0; i<20; i++){
    float angle = (millis()/1000.0) * (i+1) * 0.25;
    float dist = 20 * (i+1);
    
    float x = width/2 + cos(angle) * dist;
    float y = height/2 + sin(angle) * dist;
    
    fill(235,15,225);
    ellipse(x,y,30,30);
    
  }
}