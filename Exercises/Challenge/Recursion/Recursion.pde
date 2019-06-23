/**
 * Recursion. 
 * 
 * A demonstration of recursion, which means functions call themselves. 
 * Notice how the drawCircle() function calls itself at the end of its block. 
 * It continues to do this until the variable "level" is equal to 1. 
 */
 
void setup() {
  size(640, 640);
  noStroke();
  noLoop();
}

void draw() {
  // EXTRA play around with all the numbers!!!  
  drawCircle(width/2, 280, 4);
}

void drawCircle(int x, int radius, int level) {
  // EXTRA play around with all the numbers!!!  
  float tt = 86 * level/2.0;
  fill(tt, 60);
  ellipse(x, height/2, radius*2, radius*2);      
  ellipse(width/2, x, radius*2, radius*2);      
  if(level > 1) {
    level = level - 1;
    drawCircle(x - radius/2, radius/2, level);
    drawCircle(x + radius/2, radius/2, level);
  }
}
