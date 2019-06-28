// This creates an array of boxes, this is like saying I want to store 1000 boxes and perform operations on it.  
Box[] boxes = new Box[1000]; // Array of boxes 
int width_X = 600;
int height_Y = 600;

void setup() {
  size(600, 600);
  background(0);
  smooth();
  frameRate(1);
}

void draw() {
  /**  EXTRA Try changing the fill */
  // We are drawing a large black rect over the whole canvas every frame
  fill(0, 130); // 0 = black, 255 = white, 130 = alpha
  rect(0, 0, width_X, height_Y); // rectangle that covers the whole screen 

  /**  EXTRA Try changing the size of the box,  */
  int offset = 20;

  int numberOfBoxes = 0; // This is our index in the array of boes 

  // for (stating value; how large that value can get; how much you offset that value)
  for (int x = offset; x < width_X; x+=offset*2) {
    for (int y = offset; y < height_Y; y+=offset*2) {
      /**  EXTRA Try the offset numbers, Be warned this is tricky! */
    }
  }
  /**  TODO 
   Try making a nested for loop with x and y being the variables used that goes the length of the screen
   Useful links 
   https://processing.org/reference/for.html
   https://processing.org/reference/Array.html
   */

  int x = 20; // 
  int y = 20;


  Box box = new Box(
    new PVector(x+offset, y+offset), 
    new PVector(x-offset, y+offset), 
    new PVector(x-offset, y-offset), 
    new PVector(x+offset, y-offset));

  /** TODO 
   r
   */
  // Draw all the boxes 
  box.drawPoint();
}

// This is called an object. It is used for holding information and you can execute methods on the values in the class.   
// For more info on boxes https://processing.org/reference/Object.html
class Box {
  // PVectors cotain two vales x and y cartesian coordinates
  // https://processing.org/reference/PVector.html
  PVector p1, p2, p3, p4;

  /**  EXTRA 
   Try adding an extra point so we have a p5 or p6 PVector, Be warned this is very tricky!!!
   more info on objects! https://processing.org/tutorials/objects/  
   */
  Box(PVector p1, PVector p2, PVector p3, PVector p4) {
    this.p1 = p1;
    this.p2 = p2;
    this.p3 = p3;
    this.p4 = p4;
  }

  void drawPoint() {
    /**  EXTRA 
    Try changing the strokeWeight or even removing it or playing around the 
    related pages on this link https://processing.org/reference/strokeWeight_.html
     */
    // Here we can control the width of the line
    strokeWeight(random(0, 5));

    /** EXTRA Try changing the colour of the box's outline */
    //stroke(random(50, 255), random(50, 125));
    stroke(random(0, 150), random(0, 140), 0, random(0, 255));

    /** EXTRA Try changing the colour of the box */
    fill(random(255, 125), random(0, 190));

    /**  EXTRA Be warned this is tricky!
     Try changing how the shape of the box, this can be done by changing the order of the vertices 
     https://processing.org/reference/beginShape_.html
     
     */
    // randomly place 1-4 shapes, this can create a box, a triangle or a line
    // https://processing.org/reference/random_.html

    beginShape();
    if (random(1)<0.7)
      vertex(p1.x, p1.y);
    if (random(1)<0.7)
      vertex(p2.x, p2.y);
    if (random(1)<0.7)
      vertex(p3.x, p3.y);
    if (random(1)<0.7)
      vertex(p4.x, p4.y);
    endShape();
  }
}
