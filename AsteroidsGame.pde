Spaceship bob = new Spaceship();
Star [] sky = new Star[300];
//your variable declarations here
public void setup()
{
  size(1400, 700);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
}
public void draw()
{
  background(0, 0, 0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed() {
  if (keyCode == RIGHT) {
    bob.turn(10);
  }
  if (keyCode == LEFT) {
    bob.turn(-10);
  }
  // hyperspace
  if (keyCode == DOWN)
  {
    bob.hyperspace();
  }
  // accelerate
  if (keyCode == UP) {
    bob.accelerate(5);
  }
}
