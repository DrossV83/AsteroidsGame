class bullet extends Floater {
  public bullet(Airplane guh) {
    myCenterX = guh.myCenterX;
    myCenterY = guh.myCenterY;
    myPointDirection = guh.returnAngle();
    
    myXspeed = Math.cos(Math.toRadians(myPointDirection)) * 15;
    myYspeed = Math.sin(Math.toRadians(myPointDirection)) * 15;
    xCorners = new int[]{-2, -2, 2, 2};
    yCorners = new int[]{10, -10, -10, 10};
  }

  public boolean isVisible() {
    return(myCenterX >= 0 && myCenterX <= width && myCenterY >= 0 && myCenterY <= height);
  }

  public void show() { 
    pushMatrix();
    fill(#F71E1E);  
    translate((float) myCenterX, (float) myCenterY);
    float dRadians = (float)(myPointDirection * (Math.PI / 180));
    rotate(dRadians);
    beginShape();
    for (int i = 0; i < 4; i++){
      vertex(xCorners[i], yCorners[i]); 
    }
    endShape(CLOSE);
    
    // Undo the rotation and translation after drawing the bullet
    rotate(-1 * dRadians);
    translate(-1 * (float) myCenterX, -1 * (float) myCenterY);
    popMatrix();
  }
    public void move()
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;       
  }   
}
