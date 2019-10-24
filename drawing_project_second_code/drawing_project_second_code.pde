//10 mins into sliders video



float sliderx; // a decimal number
float thickness;
int tool = 0;
//0 means pen
//1 means trollface stamp
//2 means whatever you want 



void setup() {
  size(800, 600);
  sliderx = 50;
  thickness = 1;
}

void draw() {
  
  //drawing line code
  stroke(0);
  strokeWeight(thickness);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  //toolbar of buttons, sliders, etc.
  fill(255);
  stroke(0);
  strokeWeight(1);
  
  //toolbar
  rect(0, 0, width, 100);
  
  //slider
  line (50, 50, 150, 50);//track
  ellipse(sliderx, 50, 20, 20);//knob
  
  if (mousePressed) {
    if (dist(sliderx, 50, mouseX, mouseY) < 20) {
      sliderx = mouseX;
      
      
      if (sliderx < 50) { // makes it so the knob can't go bellow the minimum!
        sliderx = 50;
      }
      
      
      if (sliderx > 150) {
        sliderx = 150;
    }
    
    }
    
    
  }
  
  thickness = map(sliderx, 50, 150, 1, 20);
 
  
  
  rect (50, 50, 100, 75);
                                                                              //indicator
if( mouseX > 50 && mouseX < 125 && mouseY > 50 && mouseY < 125) {
  
  background (255);
  
}
  
  
  
  
}















    
    
 
  
