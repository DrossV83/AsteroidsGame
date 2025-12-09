ArrayList <Asteroid> six7 = new ArrayList();
Airplane ship = new Airplane();
ArrayList <bullet> touhou = new ArrayList();
Star[] whenfield;

public void setup() 
{
  size(800, 800);
  //ship = new Airplane();
  whenfield = new Star[100];
  for (int i = 0; i < whenfield.length; i++) {
    whenfield[i] = new Star();
  }
  
  for (int i = 0; i < 10; i++){  
    six7.add(new Asteroid());
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i < whenfield.length; i++){
    whenfield[i].move();
    whenfield[i].show();
  }
  ship.move();
  ship.show();
  for (int i = six7.size() - 1; i >= 0; i--) {  
    Asteroid speed = six7.get(i);
    speed.turn(speed.omega);
    if (dist((float) speed.myCenterX, (float) speed.myCenterY, (float) ship.myCenterX, (float) ship.myCenterY) <= 30) {
      six7.remove(i);  
      six7.add(new Asteroid());
    } else {
      speed.move();
      }
  }
  for (int y = touhou.size() - 1; y >= 0; y--) {  
        bullet spell = touhou.get(y);
        spell.move();
        spell.show();
  }
  
 
  for(int i = six7.size() - 1; i >= 0; i--) {  
      Asteroid speed = six7.get(i);
      for (int y = touhou.size() - 1; y >= 0; y--) {  
        bullet spell = touhou.get(y);
        if (dist((float) speed.myCenterX, (float) speed.myCenterY, (float) spell.myCenterX, (float) spell.myCenterY) <= 50) {
          six7.remove(i);  // Remove asteroid
          touhou.remove(y);  // Remove bullet
          six7.add(new Asteroid());
         // break;  
        }
        
      }
      speed.show();
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
  if(key == ' ') {
    touhou.add(new bullet(ship));  
  }
}
