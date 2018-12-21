//class Star //note that this class does NOT extend Floater
//{
  //your code here
//}

class Star
{
  private int myX, myY, myR;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myR = (int)(Math.random()*5);
  }
  public void show()
  {
    fill(255);
    noStroke();
    ellipse(myX, myY, myR, myR);
  }
}
