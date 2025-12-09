class Airplane extends Floater  
{   
  private double a, w;
  private boolean accelerating;

  public Airplane() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -12;
    yCorners[0]= -12;
    xCorners[1]= 18;
    yCorners[1]= 0; 
    xCorners[2]= -10;
    yCorners[2]= 10;
    xCorners[3]= -4;
    yCorners[3]= 0;
    myColor= color(200, 69, 250);
    myCenterX= width / 2.0;
    myCenterY= height / 2.0;
    myXspeed= 0.0;
    myYspeed= 0.0;
    myPointDirection= 0.0;
    a = 0.25;
    w = 8.0;
    accelerating= false;
  }

  public void hyperspace() {
    myXspeed = 0.0;
    myYspeed = 0.0;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360.0;
  }
  public void setAccelerating(boolean a) {
    accelerating = a;
  }
  public boolean isAccelerating() {
    return accelerating;
  }
  public double returnmov(char bruh){
    if (bruh == 'x') return myXspeed;
    else if(bruh == 'y') return myYspeed;
    else return 0;
  }
  public double[] coords(){
    double[] khaby = new double[2];
    khaby[0] = myCenterX;
    return khaby;
    }
  public double returnAngle() {
    double asdf = myPointDirection;
    return asdf;
    }
}
