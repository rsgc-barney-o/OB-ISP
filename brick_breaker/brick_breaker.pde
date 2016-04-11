//speed of ball 
float y;
float x;
int speedX;
int speedY;
boolean moveLeft, moveRight;


void setup() {
  //creat canvas to work on
  size(400, 600);
  //speed
  speedX= 5;
  speedY= 4;
}



void draw() {
  //make background
  background(225);

  //make ball move
  println("in the draw function, y has this value: ");
  println(y);
  println("in the draw function, x has this value: ");
  println(x);




  //make circle
  ellipse(x, y, 10, 10);

  {
    //make rect move with mouse
    translate(mouseX, 0);
    rect(0, 500, 60, 10);
    
  }
      if(y>=500){
      y*=-1;
    }
    
  
    

  // speed
  x = x + speedX;
  y = y + speedY;

  //making ball bounce when it hits he right edge of the screen
  if (x > 400) {
    speedX *= -1;
  }

  //make ball bounce when it hits bottom edge of screen
  if (y > 600) {
    speedY *= -1;
  }

  //make ball bounce off left edge
  if (x < 0) {
    speedX *= -1;
  }

  //make ball bounce off left edge
  if (y < 0) {
    speedY *= -1;
    
    
  }
}