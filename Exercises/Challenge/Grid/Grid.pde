
Box[] boxes = new Box[10000]; // Array  clas
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
  // We are drawing a large black rect over the whole canvas so every frame,
  fill(0, 130); // 0 = black, 255 = white, 100 = alpha
  rect(0, 0, width_X, height_Y); // rectangle that covers the whole screen 
  
  /**  EXTRA Try changing the size of the box,  */
  int offset = 20;
  
  int numberOfBoxes = 0; // This is our index of the array 

  // for (stating value; how large that value can get; how much you offset that value)
  for (int x = offset; x < width_X; x+=offset*2) {
    for (int y = offset; y < height_Y; y+=offset*2) {
      /**  EXTRA Try the offset numbers, Be warned this is tricky! */

      boxes[numberOfBoxes++] = 
        new Box(
        new PVector(x+offset, y+offset), 
        new PVector(x-offset, y+offset), 
        new PVector(x-offset, y-offset),
        new PVector(x+offset, y-offset));
    }
  }
  
  // Draw all the boxes 
  for (int i = 0; i< numberOfBoxes; i++) {
    boxes[i].drawPoint();
  }
}

class Box {
  // PVectors are x and y cartesian coordinates
  PVector p1, p2, p3, p4;
  
 /**  EXTRA Try adding an extra point so we have a p5 or p6 PVector, Be warned this is very tricky!
     more info on objects! https://processing.org/tutorials/objects/  
 */
  Box(PVector p1, PVector p2, PVector p3, PVector p4) {
    this.p1 = p1;
    this.p2 = p2;
    this.p3 = p3;
    this.p4 = p4;
  }

  void drawPoint() {
    /**  EXTRA Try changing the strokeWeight or even removing */
    // Here we can control the width of the line
    strokeWeight(random(0, 5));
    
    // The stroke color
    /** EXTRA Try changing the colour of the box's outline */
    //stroke(random(50, 255), random(50, 125));
    stroke(random(0, 150), random(0, 140), 0, random(0, 255));

    /** EXTRA Try changing the colour of the box */
    fill(random(255, 125),random(0,50));
    
    /**  EXTRA Be warned this is tricky!
    Try changing how the shape of the box, this can be done by changing the order of the vertices 
    https://processing.org/reference/beginShape_.html
      
    */
    // randomly place 1-4 shapes, this can create a box, a triangle or a line

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
