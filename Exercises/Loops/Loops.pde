// You don't need to touch setup for this exercise.
void setup() 
{  
  smooth(); // Used to make the pixels smoother 
  size(550, 550); // the width and height of the drawing canvas 
  frameRate(20); // How fast our framerate is
  rectMode(CENTER);
  noStroke();  
  background(0);
}

// This is used for moving the ellipse from left to right 
int CurrentFrame = 200;

void draw() 
{
  /**TODO** 
   Change the background to white by changing the values in the fill method. */
  fill(0, 10); // https://processing.org/reference/fill_.html
  rect(0+width/2, height/2, 550, width);

  // Ellipse colour   
  fill(CurrentFrame/4, CurrentFrame/2, CurrentFrame*2);

  /** TODO **t
   In the ellipse bellow we want to replace the Y value (250) for an 'int' that is inside a for loop
   https://processing.org/reference/for.html
   for(setting our y value; condition how large you want the y value to get;how much to increase our y value)
   {
   
   }
   */

    ellipse(CurrentFrame, 250, random(5, 30), random(5, 30));
  

  /** DON'T TOUCH, unlesss you want to... 
   This animates the ellipse to  move accross the screen and then resets it back to 0.
   '%' this is called a module https://py.processing.org/reference/modulo.html */
  CurrentFrame= (CurrentFrame+=5) % width;
}
