class Spaceship extends Floater
{
  public Spaceship() {
    corners = 19;
    xCorners = new int[]{36, 18, 12, 10, 2, 0, -20, -4, -4, -16, -4, -4, -20, 0, 2, 10, 12, 18, 36};
    yCorners = new int[]{0, 6, 16, 8, 2, 8, 16, 8, 4, 0, -4, -8, -16, -8, -2, -8, -16, -6, 0};
    myCenterX = 100;
    myCenterY = 100;
    myXspeed = 2;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = color(212, 175, 55);
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    //fill(230,0,0,98);
    //ellipse((float)myCenterX,(float)myCenterY,60,60);
    myCenterX = Math.random()*1401;
    myCenterY = Math.random()*701;
    myPointDirection = Math.random()*360;
  }
}
