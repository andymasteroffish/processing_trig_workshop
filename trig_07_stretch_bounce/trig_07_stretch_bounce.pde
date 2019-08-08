// Stretch and Bounce of a Sprite
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10
//
// Don't forget to put the sprite image in the data folder
// You may need to make a data folder if you have not yet imported any assets into your porjetc
// Sprite created by Chris Hernandez for my Wonderbundle game, Ziggurat of the Titan Beetle

PImage sprite;


void setup(){
  size(300,300);
  sprite = loadImage("player.png");
  //this image is 256x256
}  

void draw(){
  background(0,0,0);
  
  float base_w = sprite.width;  //256
  float base_h = sprite.height;  //256
  
  float angle = (millis() / 1000.0) * 4;
  
  float new_w = base_w + sin(angle) * 20;
  float new_h = base_h + sin(angle+PI) * 20;
  
  image(sprite, width/2-new_w/2, 300-new_h, new_w, new_h);
  
}