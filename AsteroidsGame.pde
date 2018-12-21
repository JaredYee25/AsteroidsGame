//your variable declarations here
//public void setup() 
//{
  //your code here
//}
//public void draw() 
//{
  //your code here
//}

Spaceship bob = new Spaceship();
Star[] buzz = new Star[500];
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
  for (int i=0; i<buzz.length; i++)
  {
    buzz[i]= new Star();
  }
  for (int i =0; i<10; i++)
  {
    rock.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<buzz.length; i++)
  {
    buzz[i].show();
  }
  for(int j = 0; j < shot.size(); j++)
  {
    shot.get(j).show();
    shot.get(j).move();
  }
  for(int i =0; i<rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    float remove = dist(bob.getX(), bob.getY(), rock.get(i).getX(), rock.get(i).getY());
    if(remove<30){
    rock.remove(i);
    break;}
    for(int j = 0; j < shot.size(); j++)
  {
    float r = dist(shot.get(j).getX(), shot.get(j).getY(), rock.get(i).getX(), rock.get(i).getY());
    if (r < 30)
  {
    rock.remove(i);
    shot.remove(j);
    break;
  }
  }
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  //hyperspace
  if (key == 'h')
  {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setPointDirection((int)(Math.random()*360));
  }
  //rotationL
  if (key == 'a')
  {
    bob.turn(-40);
  }
  //rotationR
  if (key == 'd')
  {
    bob.turn(40);
  }
  //accelerate
  if (key == 'w')
  {
    bob.accelerate(1);
  }
  //deccelerate
  if (key == 's')
  {
    bob.accelerate(-1);
  }
  if(key == 'n')
  {
    shot.add(new Bullet(bob));
  }
}
