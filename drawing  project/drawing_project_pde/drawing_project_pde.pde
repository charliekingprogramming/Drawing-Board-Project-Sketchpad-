color orange = #E81E1E;

color creme  = color(250,215,154);

color green  = #AFD047;

color drawingColor = orange;



void setup() {

  size(600, 600);

}



void draw() {

  println(mouseX, mouseY);



  //drawing color buttons

  strokeWeight(5);

  stroke(0);

  fill(orange);

  ellipse(100, 100, 100, 100);

  

  fill(creme);

  ellipse(100, 300, 100, 100);

  

  fill(green);

  ellipse(100, 500, 100, 100);

  





  //drawing line on the canvas

  strokeWeight(5);

  stroke(drawingColor);

  if (mousePressed) {

    line(mouseX, mouseY, pmouseX, pmouseY);

  }

}



void mouseReleased() {

  

  if ( dist(100, 100, mouseX, mouseY) <= 50) {

    drawingColor = orange;

  }

  

  if ( dist(100, 300, mouseX, mouseY) <= 50) {

    drawingColor = creme;

  }

  

  if ( dist(100, 500, mouseX, mouseY) <= 50) {

     drawingColor = green; 

  }

  

}
