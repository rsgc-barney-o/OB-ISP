float x = 0;

void setup() {
  //creat canvas to work on
  size(200, 200);
}

void draw() {

  x += 1;
  println("in the draw function, x has this value: ");
  println(x);
}