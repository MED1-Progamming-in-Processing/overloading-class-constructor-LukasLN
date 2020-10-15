
Circle circle;
public float x;
public float y;
boolean shift = true;
boolean gate = false;
float onOff = 0;

void setup() {
  size(300, 300);
//Draws initial random circle
  circle = new Circle(random(width/2)+70, random(height/2) +70, random(-3, 3), random(-3, 3), 50.);
}

void draw() {
  background(200);
  println(shift,gate); //debugging tool 

// if gate is true a random nuber will be picked that determines whether the
//shift boolean is true or false, leading to either a circle or rectangle being drawn.
  if (gate) {
    onOff = random(0, 11); 
  
  if (onOff < 5 && gate == true) {
    shift = true;
    
  } else if (onOff > 5 && gate == true) {
    shift = false;
  }
  if (shift && gate) {
    circle = new Circle(random(width/2)+70, random(height/2) +70, random(-3, 3), random(-3, 3), 50.);
    gate = false;
  } 
  else if(!shift && gate) {
    circle = new Circle(random(width/2)+70, random(height/2) +70, random(-3, 3), random(-3, 3), 50);
    gate = false;
  }
  }
  
  //here we call the move and display methodes from within the Circle class 
  circle.move();
  circle.display();

}

void mouseClicked() {
     gate = true;



}
