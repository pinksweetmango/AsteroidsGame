Spaceship bob = new Spaceship();
Star [] sky = new Star[700];
ArrayList <Asteroid> Aster = new ArrayList <Asteroid>();
ArrayList <Bullet> sue = new ArrayList <Bullet>();
//your variable declarations here
public void setup()
{
  size(1400, 700);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i < 15; i++)
  {
    Aster.add(i, new Asteroid());
  }
}
public void draw()
{
  background(0, 0, 0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  for (int i = 0; i < Aster.size(); i++) {
    Aster.get(i).move();
    Aster.get(i).show();
    if (dist((float)bob.getX(), (float)bob.getY(), (float)Aster.get(i).getX(), (float)Aster.get(i).getY()) <= 25) {
      Aster.remove(i);
      i--;
      break;
    }
  }
  // for (int i = 0; i < sue.size(); i++) {
  //possibly just show and more for sue
  // }
  for (int j = 0; j < sue.size(); j++) {
    sue.get(j).move();
    sue.get(j).show();
    for (int i = 0; i < Aster.size(); i++) {
      if (dist((float)sue.get(j).getX(), (float)sue.get(j).getY(), (float)Aster.get(i).getX(), (float)Aster.get(i).getY()) <= 15) {
        Aster.remove(i);
        sue.remove(j);
        i--;
        j--;
        break;
      }
    }
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
  if (keyCode == SHIFT) {
    sue.add(new Bullet(bob));
  }
}
