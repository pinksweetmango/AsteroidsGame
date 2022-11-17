class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myShape;
  public Star(){
    myX = (int)(Math.random()*1401);
    myY = (int)(Math.random()*701);
    myShape = (int)(Math.random()*4)+1;
  }
  public void show(){
    fill(255, 255, 255, (int)(Math.random()*100)+50);
    stroke(212,175,55,(int)(Math.random()*100)+50);
    ellipse(myX,myY,myShape,myShape);
  }
}
