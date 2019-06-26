// This exercise is the hello world of processing and is designed to introduce you to processing. 
// 'setup()' is used to set up your canvas. 
// Setup only execute once when the you start the program

void setup() {
  smooth(); // Used to make the pixels smoother 
  size(450, 450); // the width and height of the drawing canvas 
  //  noLoop(); // Draw will only run once!
}

// This is where you do all your drawing
void draw() {
  fill(0, 50);
  rect(0, 0, 450, 450);
  
  /**  EXTRA change my colour https://processing.org/reference/fill_.html */
  fill(150, 255, 40);
  /** TODO: draw an ellipse here and use your mouse to move the ellipse around the canvas 
      you'll need to use the 4 links below for this exercise.
      **Hint** check the ellipse page and check the syntax and parameters section for help
      
      https://processing.org/reference/ellipse_.html
      
      you can use MouseX to control the X position for the ellipse
      https://processing.org/reference/mouseX.html 
      
      You can use MouseY to control the Y position for the ellipse
      https://processing.org/reference/mouseY.html 
      
      You can use the 4 decleared variables below for your ellipse's parameters  
      https://processing.org/examples/variables.html
   **/
   
   // This is called setting a variable, it's used for saving a value to be used later on.
   // try using these variable to create your ellipse
  int xPositionOfEllipse = 20;  
  int yPositionOfEllipse = 20;
  int widthOfEllipse = 50;
  int heightOfEllipse = 50;
  // TODO: Your code goes here 
  


  // Draws a grid on the screenc
  stroke(250, 50);
  text("Mouse X= : "+mouseX, 10, 438);
  text("Mouse Y= : "+mouseY, 10, 448);
  fill(0, 102, 153);
  line(50, 0, 50, 450);
  line(100, 0, 100, 450);
  line(150, 0, 150, 450);
  line(200, 0, 200, 450);
  line(250, 0, 250, 450);
  line(300, 0, 300, 450);
  line(350, 0, 350, 450);
  line(400, 0, 400, 450);
}
