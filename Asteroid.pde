class Asteroid extends Floater
{
  public void setX(int x){myCenterX = x;} 
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   //include int because this variable is initialized as double
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  private int rotationSpeed;
  public Asteroid()
  {
   corners = 8;
   xCorners = new int[corners];
   yCorners = new int[corners];
    xCorners[0] = -0;
    yCorners[0] = -20;
    xCorners[1] = 20;
    yCorners[1] = -20;
    xCorners[2] = 20;
    yCorners[2] = 0;
    xCorners[3] = 20;
    yCorners[3] = 20;
    xCorners[4] = 0;
    yCorners[4] = 20;
    xCorners[5] = -20;
    yCorners[5] = 20;
    xCorners[6] = -20;
    yCorners[6] = 0;
    xCorners[7] = -20;
    yCorners[7] = -20;
  myColor = color(128,128,128);
  rotationSpeed = (int)(Math.random()*9)-4;
  myCenterX = (int)(Math.random()*500);
 myCenterY = (int)(Math.random()*500);
  myDirectionX= (int)((Math.random()*8)-4);
  myDirectionY= (int)((Math.random()*8)-4);

//  corners = 8;
//    xCorners = new int[corners];
//    yCorners = new int[corners];
//    yCorners[0] = -25;
//    xCorners[1] = 10;
//    yCorners[1] = -10;
 //   xCorners[2] = 25;
 //   yCorners[2] = 0;
 //   xCorners[3] = 10;
//    yCorners[3] = 10;
 //   xCorners[4] = 0;
//    yCorners[4] = 25;
//    xCorners[5] = -10;
//    yCorners[5] = 10;
//    yCorners[6] = 0;
//    yCorners[7] = -10;
//    setDirectionX(Math.random()*6-3);
//    setDirectionY(Math.random()*2-1);
 //   setX(x);
    //setY(y);

  }
  
  public void move(){
   turn(rotationSpeed);
   super.move();
  } 
}
