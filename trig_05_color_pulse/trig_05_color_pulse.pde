// Color Pulsing Using a Sine Wave
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

void setup(){
  size(300,300);
}

void draw(){
  float time = millis()/1000.0;
  
  background(255, 255, 255);
  
  //smooth changing color
  float r = 200 + sin(time * 0.7) * 50;
  float g = 155 + sin(time) * 100;
  float b = 50 + sin(time * 2.5) * 50;
  
  fill(r,g,b);
  rect(20,20, 260,260);
  
  //fast, siren-type pulse
  float angle = time * 10;
  float r2 = 128 + sin(angle) * 128;
  float g2 = 0;
  float b2 = 0;
  fill(r2,g2,b2);
  rect(100,100, 100,100);
  
}