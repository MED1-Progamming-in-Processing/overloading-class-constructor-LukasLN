class Circle {
  float xMAIN;
  float yMAIN;
  float xSpeed;
  float ySpeed;
  float radius;
  float half;
  float side2;
  int side;
  boolean rectangle;
//constructor for circle on screen
  Circle(float xtemp, float ytemp, float xSpeed, float ySpeed, float radius) {
    this.xMAIN = xtemp;
    this.yMAIN = ytemp;
    x = xMAIN;
    y = yMAIN;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.half = radius/2;
    rectangle = false;
  }
// constructor for rectangle on screen
  Circle(float xtemp, float ytemp, float xSpeed, float ySpeed, int side) {
    this.xMAIN = xtemp;
    this.yMAIN = ytemp;
    x = xMAIN;
    y = yMAIN;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.side = side;
    this.side2 = side/2;
    rectangle = true;
  }
//a move meothode that works with both the cicrkle and rectangle constructor
  void move() {
    x += xSpeed;
    if (x < half || x > width-half || x < side2 || x > width-side2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < half || y > width-half || y < side2 || y > width-side2) {
      ySpeed *= -1;
    }
  }
//a display methode that draws an ellipse or rectangle based on boolean factor in both constructors
  void display() {
    if (!rectangle) {
      ellipse(x, y, radius, radius);
    }
    if (rectangle) {
      rectMode(CENTER);
      rect(x, y, side, side);
    }
  }
}
