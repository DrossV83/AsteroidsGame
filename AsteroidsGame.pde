Airplane ship;
ArrayList <Asteroid> six7 = new ArrayList();
Star[] whenfield;
  Asteroid ast1 = new Asteroid();  
  Asteroid ast2 = new Asteroid();  
  Asteroid ast3 = new Asteroid();  
public void setup() 
{
  size(800, 800);
  ship = new Airplane();
  whenfield = new Star[100];
  for (int i = 0; i < whenfield.length; i++) {
    whenfield[i] = new Star();
  }
  for(int i = 0; i  <= 5; i++){
  six7.add(new Asteroid());};
 
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
  for (int i = 0; i < six7.size(); i++) {
    Asteroid speed = six7.get(i);
    speed.turn(speed.omega);
    if(dist((float)speed.myCenterX, (float)speed.myCenterY, (float)ship.myCenterX, (float)ship.myCenterY) <= 30)six7.remove(i);
    speed.show();
    speed.move();
  }
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
