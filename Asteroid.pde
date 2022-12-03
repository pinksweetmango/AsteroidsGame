class Asteroid extends Floater {
  private int rotSpeed;
  public Asteroid() {
    corners = 8;
    xCorners = new int[]{16, 0, 8, -8, -16, -4, -16, 16};
    yCorners = new int[]{40, 40, 56, 56, 32, 23, -8, 40};
    myCenterX = (int)(Math.random()*1400);
    myCenterY = (int)(Math.random()*700);
    myXspeed = (int)(Math.random()*9)-4;
    myYspeed = (int)(Math.random()*9)-4;
    myPointDirection = (int)(Math.random()*360);
    myColor = color(247, 188, 46);
    rotSpeed = (int)(Math.random()*7)-3;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
    public double getX(){
   return myCenterX;
  }
  public double getY(){
   return myCenterY;
  }
}
