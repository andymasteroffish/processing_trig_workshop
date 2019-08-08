// Shoot-Em-Up Style Enemy Movement using Sine Wave
// Example by Andy Wallace for Trig Workshop at Wonderville on 2019.08.10

//an array of Foe objects
Foe foes[] = new Foe[10];

void setup(){
  size(700,500);
  
  for (int i=0; i<10; i++){
    float x = width + i * 60;
    foes[i] = new Foe(x);
  }
 
}

void draw(){
  background(30,30,30);
  
  for (int i=0; i<10; i++){
    foes[i].draw();
  }
}