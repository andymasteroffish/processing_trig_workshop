// Size Pulsing Using a Sine Wave
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

void setup(){
  size(600,300);
}

void draw(){
  float time = millis()/1000.0;  //seconds are nicer to work with than milliseconds
  
  background(255, 255, 255);
  
  float radius1 = sin(time) * 100;            //range of -100 to 100
  ellipse(150, height/2, radius1, radius1);
  
  float radius2 = 75 + sin(time) * 25;        //range of 50 to 100
  ellipse(300, height/2, radius2, radius2);
  
  //we can also use sine to generate a percentage value (0 to 1) and then plug our min and max values in
  float prc = 0.5 + sin(time) * 0.5;           //range of 0.0 to 1.0
  float radius3 = (1.0-prc) * 50 + prc * 100;  //another range of 50 to 100
  ellipse(450, height/2, radius3, radius3);
  
  //how can we make this run faster?
  //try using sin(time*2) in any of the above equations 
}