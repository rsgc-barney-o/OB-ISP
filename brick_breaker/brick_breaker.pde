void setup() {
  //creat canvas to work on
  size(400, 600);
}

  
   
//speed of ball 
float y;
float x;
int speedX;
int speedY; 


void draw() {
  background(225);
  speedX= 10;
  speedY= 4;
  println("in the draw function, y has this value: ");
  println(y);
  println("in the draw function, x has this value: ");
  println(x);

  //make circle
  ellipse(x, y, 10, 10);

  // speed
  x = x + speedX;
  y = y + speedY;

  //make rect that ball bouces off
  translate(mouseX, 0);
  rect(0, 500, 60, 10);


  }