float y = 0;

void setup() {
  //creat canvas to work on
  size(400, 600);
}


void draw(){
background(225);
  y += 1;
  println("in the draw function, y has this value: ");
  println(y);
  
  //make circle
  ellipse(300, y, 10, 10);
  
  //make rect that ball bouces off
  translate(mouseX, 0);
  rect(0, 400, 60, 10);
}



  
  