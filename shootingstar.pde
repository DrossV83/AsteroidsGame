class Star //note that this class does NOT extend Floater
{
  private int x,y,brightness,speed,size;
  public Star() {
    speed = (int)(Math.random()*41) + 10;
    x = 850;
    y = (int)(Math.random()*800);
    brightness = (int)(Math.random()*155+50); 
    size =(int)(Math.random()* 2.0+1.0);
  }
  public void show() 
  {
    stroke(brightness);
    strokeWeight(size);
    point(x, y);
  }
  public void move()
  {
   if(x <= -20){
      speed = (int)(Math.random()*11) + 5;
      x = 850;
      y = (int)(Math.random()*800);
      brightness = (int)(Math.random()*155+50); 
      size =(int)(Math.random()* 5);
    }
   else x -= speed;
  }
}
