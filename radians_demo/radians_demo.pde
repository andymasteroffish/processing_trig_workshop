// This demo was used in class to show the relationship between radians and the unit circle
// THIS IS NOT A CODE EXAMPLE
// The code was not written to demo a coding concept. You're free to poke around, but the intention is for this exmaple to be played
// by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

float cur_angle;

float unit_scale = 100;

boolean holding_left, holding_right;

PImage[] marker_pics = new PImage[9];

void setup(){
  size(700,700);
  
  cur_angle = 0;
  
  holding_left = false;
  holding_right = false;
  
  for (int i=0; i<marker_pics.length; i++){
    marker_pics[i] = loadImage("marker"+i+".png");
  }
}

void update(){
  float angle_speed = 0.05;
  if (holding_left){
    cur_angle -= angle_speed;
  }
  if (holding_right){
    cur_angle += angle_speed;
  }
  if (cur_angle < 0)        cur_angle += TWO_PI;
  if (cur_angle > TWO_PI)   cur_angle -= TWO_PI;
    
}

void draw(){
  update();
  background(240);
  
  ellipseMode(RADIUS);
  
  //unit circle
  pushMatrix();
  translate(width/2 - 50, 200);
  
  
  //background
  noFill();
  strokeWeight(1);
  stroke(50);
  ellipse(0,0, unit_scale, unit_scale);
  
  //angle so far
  strokeWeight(3);
  stroke(10);
  arc(0,0, unit_scale, unit_scale, 0, cur_angle);
  
  //lines
  strokeWeight(1);
  stroke(200);
  line(0,0, unit_scale, 0);
  float line_x = cos(cur_angle) * unit_scale;
  float line_y = sin(cur_angle) * unit_scale;
  line(0,0, line_x, line_y);
  
  textSize(14);
  
  //images
  for (int i=0; i<8; i++){
    float angle = (TWO_PI/8) * i;
    float img_x = cos(angle) * (unit_scale+30);
    float img_y = sin(angle) * (unit_scale+30);
    
    imageMode(CENTER);
    image(marker_pics[i], img_x, img_y, 30, 30);
    
    //tick line
    float line_size = 5;
    if (i % 2 == 0)  line_size = 10;
    if (i % 4 == 0)  line_size = 15;
    stroke(50);
    line( cos(angle)*(unit_scale-line_size), sin(angle)*(unit_scale-line_size), cos(angle)*(unit_scale+line_size), sin(angle)*(unit_scale+line_size));

    //graph point
    textAlign(CENTER, CENTER);
    fill(0);
    
    if (i % 2 == 0){
      float text_x = cos(angle)*(unit_scale-30);
      float text_y = sin(angle)*(unit_scale-30);
      text( (int)(cos(angle))+","+(int)(sin(angle)), text_x,text_y);
    }
    
}
  
  //draw our 0,0
  textAlign(CENTER, CENTER);
  fill(0);
  text("0,0", 0,0);
  
  //x value
  float x_val_y = unit_scale * 2;
  float x_val_x = cos(cur_angle) * unit_scale;
  String x_val_text = nf(cos(cur_angle), 1,2);
  textAlign(LEFT, CENTER);
  textSize(20);
  text(" X: "+x_val_text, x_val_x, x_val_y);
  
  strokeWeight(1);
  stroke(200);
  line(x_val_x, x_val_y, cos(cur_angle)*unit_scale, sin(cur_angle)*unit_scale);
  
  //y value
  float y_val_x = unit_scale * 2;
  float y_val_y = sin(cur_angle) * unit_scale;
  String y_val_text = nf(sin(cur_angle), 1,2);
  textAlign(LEFT, CENTER);
  textSize(20);
  text(" Y: "+y_val_text, y_val_x, y_val_y - 3);
  
  strokeWeight(1);
  stroke(200);
  line(y_val_x, y_val_y, cos(cur_angle)*unit_scale, sin(cur_angle)*unit_scale);
  
  
  
  popMatrix();
  
  
  //the line along the bottom
  pushMatrix();
  translate(width/2, 500);
  
  float start_x = -PI * unit_scale;
  float end_x = PI * unit_scale;
  
  float this_x = (cur_angle - PI) * unit_scale;
  
  strokeWeight(3);
  stroke(10);
  line(start_x,0, this_x,0);
  
  //tick marks
  strokeWeight(1);
  stroke(100);
  
  for (int i=0; i<=8; i++){
    float tick_x = start_x + (TWO_PI/8) * i * unit_scale;
    float tick_h = 7;
    if (i % 2 == 0)  tick_h = 10;
    if (i % 4 == 0)  tick_h = 15;
    line(tick_x, -tick_h, tick_x, tick_h);
    
    imageMode(CENTER);
    image(marker_pics[i], tick_x, 45, 50, 50);
  }
  
  popMatrix();
 
}



void keyPressed(){
  if (keyCode == LEFT){
    holding_left = true;
  }
  if (keyCode == RIGHT){
    holding_right = true;
  }
}

void keyReleased(){
  if (keyCode == LEFT){
    holding_left = false;
  }
  if (keyCode == RIGHT){
    holding_right = false;
  }
}