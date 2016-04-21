//speed of ball 
float y;
float x;
int speedX;
int speedY;
boolean isAlive;


void setup() {
  //creat canvas to work on
  size(400, 600);
  //speed
  speedX= 5;
  speedY= 4;
  //setup variable
  isAlive = true;
}

void draw() {
  //make background
  background(225);



  //make game end when ball passes paddle 
  if (isAlive == true) {
    //make ball move
    println("in the draw function, y has this value: ");
    println(y);
    println("in the draw function, x has this value: ");
    println(x);

    //make circle
    ellipse(x, y, 10, 10);

    // speed
    x = x + speedX;
    y = y + speedY;

    {
      //make rect move with mouse
      translate(mouseX, 0);
      rect(0, 500, 60, 10);
    }

    if (y>=500) {
      y+=-1;
    }

    //making ball bounce when it hits he right edge of the screen
    if (x > 400) {
      speedX *= -1;
    }



    //make ball bounce off left edge
    if (x < 0) {
      speedX *= -1;
    }

    //make ball bounce off left edge
    if (y < 0) {
      speedY *= -1;
    }

    //ball bounces of paddle

    if (y >= 500 && y <= 505) {
      if (x >= mouseX && x <= mouseX + 60) {
        speedY *= -1;
      }
    }
  } else {
    fill(255, 0, 0);
    text("GAME OVER", 150, 200);
    textSize(26); 
  }




  if (y>=600) {
    isAlive = false;
  }
}