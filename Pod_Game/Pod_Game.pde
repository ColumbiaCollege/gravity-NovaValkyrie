//Pod Game (gravity) By Jessen Durden
// 1/31/19 
float shipX;
float shipY;
float speedX =0;
float speedY =0;
//Sets the postion and speed of the ship 
PImage Pod;
PImage Namek;
//Sets the Name of the Images
void setup() {
  size(1200, 545);
  //Makes the window Size
  Namek = loadImage("Namek.jpg");
  Pod = loadImage("Spacepod.png");
  //Makes the Images 
  background(Namek);
  //Sets the background to the Image
  shipX = width/2;
  shipY = height/2;
  //Defines the Properties of the ShipX and ShipY vaules 
  frameRate(20);
  //Makes the Frame Rate to 20
}
void draw() {
  background(Namek);
  //Draws the ship
  image(Pod, shipX, shipY, 40, 40);
  //Puts The Pod Image into the program 
  if (keyPressed && keyCode == LEFT) {
    speedX--;
  }
  if (keyPressed && keyCode == RIGHT) {
    speedX++;
  }


  if (keyPressed && keyCode == UP) {
    speedY --;
  }

  if (keyPressed && keyCode == DOWN) {
    speedY++;
  } 
  //Sets the direction of the ship with the corresponding arrow key
  if (keyPressed && keyCode == ALT) {
    //fill(255);
    shipX = width/2;
    shipY = height/2;
    speedY =0;
    speedX =0;
    //Resets the Progam with the ALT button
  }
  shipX = shipX+speedX;
  speedX=.99*speedX;
  shipY= shipY+speedY;
  speedY=.99*speedY;
  //Sets up the Gravity Command
}
