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

  fill(150, 255, 40);
  /** TODO: draw circle here and use your mouse to move the ellipse 
      you'll need to use the 3 links below for this exercise.
      *Hint* check the ellipse page and check the syntax and parameters section
      
      https://processing.org/reference/ellipse_.html
      
      you can use MouseX to control the X position for the ellipse
      https://processing.org/reference/mouseX.html 
      
      You can use MouseY to control the Y position for the ellipse
      https://processing.org/reference/mouseY.html 
   **/
  
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
