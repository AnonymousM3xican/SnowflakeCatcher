Snowflake [] snow;
void setup()
{
  size(300,300);
  snow = new Snowflake[100];
  for(int i = 0 ; i <snow.length; i++)
  {
      snow[i]=new Snowflake();
  }
  background (0);
}
void draw()
{
  
  for (int i =0; i < snow.length ;i++)
  {
    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
    snow[i].show();
    
  } 
}
void mouseDragged()
{
  int myX;
  int myY;
  myX=mouseX;
  myY=mouseY;
  if(mouseY<300)
  {
  fill(0,250,0);
  noStroke();
  
  rect(myX,myY,5,5);
  stroke(0);
  }
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;
  
  Snowflake()
  {
  x = (int)(Math.random()*301);
  y = (int)(Math.random()*301);
  isMoving=true;
  }
  void show()
  {
  fill(250);
  ellipse(x, y, 5, 5); 
  }
  void lookDown()
  {
    if(y > 10 && y<300 && get(x,y+4) != color(0)){
      isMoving=false;
    }  
      else{
      isMoving=true; 
      } 
      
  }
  void erase()
  {
    fill(0,0,0);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    if(isMoving == true)
      y++;
  }
  void wrap()
  {
    if(y>295)
    {
    y=0;
    x = (int)(Math.random()*301);  
    }
  }
}


