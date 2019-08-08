class Foe{
 
  float x;
  float y;
  float anchor_y;
  
  float x_speed = 1;
  float y_range = 100;
  
  public Foe(float start_x){
    x = start_x;
    anchor_y = 125;
  }
  
  void draw(){
    x -= x_speed;
    
    //y position based on sin with x as input
    float angle = x * 0.02;
    y = anchor_y + sin(angle) * y_range;
    
    //actually draw it
    ellipse(x,y, 40,40); 
  }
  
}