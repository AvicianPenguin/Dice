void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
  fill(255,255,255);
  background(173,216,320);
  int total = 0;
  for(int y = 10; y<=400; y=y+60)
  {
    for(int x = 15; x<=450; x = x+60)
    {
      fill(255,255,255);
      Die bob = new Die(x,y); 
      total = total + bob.myFace;
      bob.show();
    }
  }
  textSize(24);
  text("Total Sum: " + str(total), 160, 450);

}

void mousePressed()
{
  redraw();
}
class Die
{
  int myX,myY,myFace;
  Die(int x, int y)
  {
    myFace = (int)((Math.random()*6) + 1);
    myX = x;
    myY = y;
  }
  void roll()
  {
    myFace = (int)((Math.random()*6) + 1);
  }
  void show()
  {
    if(myFace == 1){
     rect(myX, myY, 50, 50);
     fill(0);
     ellipse(myX + 25, myY +25, 5, 5);
    } 
    else if(myFace == 2){
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
    }
    else if(myFace == 3){
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX + 25, myY +25, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
    }
    else if(myFace == 4){
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    } 
    else if(myFace == 5){
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 25, myY +25, 5, 5);
    }
     else if(myFace == 6){
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 25, 5, 5);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    } 
    
  }

}  
