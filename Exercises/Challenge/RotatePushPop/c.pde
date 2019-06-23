/**
 * Rotate Push Pop. 
 * 
 * The push() and pop() functions allow for more control over transformations.
 * The push function saves the current coordinate system to the stack 
 * and pop() restores the prior coordinate system. 
 */
 
//** EXTRA try changing any of the values below
float a;                 // Angle of rotation
float offset = PI/12.0;  // Angle offset between boxes
int num = 12;            // Number of boxes

void setup() { 
  size(640, 360, P3D);
  noStroke();  
} 
 

void draw() {
  
  lights();
  background(0, 0, 26); // x, y, z 
  translate(width/2, height/2); 
  
  for(int i = 0; i < num; i++) {
    float gray = map(i, 0, num-1, 0, 255);
    pushMatrix();
    /** EXTRA  try changing any of the values below */
    fill(gray/2, 40, gray);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    box(200);
    popMatrix();
  }
  // Don't change this
  a += 0.01;    
} 
