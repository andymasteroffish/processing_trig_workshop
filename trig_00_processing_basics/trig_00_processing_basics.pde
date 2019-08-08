// Overview of Processing Commands
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

float mouse_size = 50;

void setup(){
  size(500,500);
  println("hello world");
  
  println("screen is "+width+" pixels wide");
  println("screen is "+height+" pixels tall");
}

void draw(){
  background(255,255,255);

  stroke(0,255,0);
  line (5,10, 80,100);
  
  fill(255,255,100);
  ellipse(20,20, 50,50);
  
  stroke(0,0,0);
  fill(100,100,255);
  ellipse(mouseX, mouseY, mouse_size,mouse_size);
  
  ellipse(width/2, height/2, 40,40);
  
  println( millis() );
  float x = millis() / 10.0;
  ellipse(x, 250, 50, 50);
}

void keyPressed(){
 if (key == 'w'){
   mouse_size += 5;
 }
 if (key == 's'){
   mouse_size -= 5;
 }
}