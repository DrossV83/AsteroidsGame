Airplane ship;
Star[] whenfield;
public void setup() 
{
  size(800, 800);
  ship = new Airplane();
  whenfield = new Star[100];
  for (int i = 0; i < whenfield.length; i++) {
    whenfield[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < whenfield.length; i++) {
    whenfield[i].move();
    whenfield[i].show();
  }
  ship.move();
  ship.show();
}

void mouseClicked(){
  ship.hyperspace();
 }
void keyPressed() { 
  if (key == CODED) {
    if (keyCode == LEFT)  ship.turn(-ship.w); 
    if (keyCode == RIGHT) ship.turn(+ship.w);
    if (keyCode == UP) {
      ship.accelerate(ship.a);
      ship.setAccelerating(true);
    }
  }
}

void keyReleased() {
  if (key == CODED && keyCode == UP) {
    ship.setAccelerating(false);
  }
}
