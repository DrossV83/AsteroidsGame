class broken extends Floater{
  protected double omega;
  public broken(){
    myColor = #EAEAEA;
    corners = 10; 
    omega = ((Math.random() * 2) - 1) ;
    myCenterX = Math.random()* 400;  
    myCenterY = Math.random()* 400;  
    myXspeed = (int)(Math.random()*-8);
 
    myYspeed = (int)(Math.random()*8)-2;
    myPointDirection = 0.0;
    xCorners = new int[corners];  
    yCorners = new int[corners];  
    int[][] cornerCoord = {
      {0, -40},  // Corner 1
      {20, -30},  // Corner 2
      {30, -10},  // Corner 3
      {15, 10},  // Corner 4
      {5, 20},  // Corner 5
      {-10, 10},  // Corner 6
      {-20, -10},  // Corner 7
      {-10, -30},  // Corner 8
      {-20, -40},  // Corner 9
      {-10, -50}   // Corner 10
      };
    for(int i = 0; i < corners; i++){
      xCorners[i] = cornerCoord[i][0];
      yCorners[i] = cornerCoord[i][1];
      }
    }
    public void show()    
  {             
    noFill();   
    stroke(myColor);
    strokeWeight(4);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
