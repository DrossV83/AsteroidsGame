class Asteroid extends Floater {
  protected double omega;
  public Asteroid() {
    myColor = color(234, 234, 234); 
    corners = 10;
    omega = ((Math.random() * 2) - 1);  
    myCenterX = Math.random() * 400;  
    myXspeed = (Math.random() * -8);  
    myYspeed = (Math.random() * 8) - 2;  
    myPointDirection = 0.0;
    xCorners = new int[corners];  
    yCorners = new int[corners];  
    int[][] cornerCoord = {
      {0, -40},  {20, -30},  {30, -10},  {15, 10}, 
      {5, 20},   {-10, 10},  {-20, -10}, {-10, -30}, 
      {-20, -40}, {-10, -50}
    };
    
    for (int i = 0; i < corners; i++) {
      xCorners[i] = cornerCoord[i][0];
      yCorners[i] = cornerCoord[i][1];
    }
  }

  public void show() { 
    noFill();
    stroke(myColor);
    strokeWeight(4);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection * (Math.PI / 180));
    rotate(dRadians);
    
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    rotate(-1 * dRadians);  // Undo rotation
    translate(-1 * (float)myCenterX, -1 * (float)myCenterY);  // Undo translation
  }
}
