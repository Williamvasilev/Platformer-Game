
public class Player
{
  public int xPos;
  public int yPos;
  public boolean collide;



  Player(int xPos, int yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
  }

  void update() {
    if (keyPressed) {
      if (key == 'a') {
        pos.x = pos.x - 2 ;
      }
      if (key == 'd') {
        pos.x = pos.x + 2 ;
      }
      if (key == ' ') {
        if (!collide) {
          vel.y -= 1;
        }
      }
    }
  }


  // square
  void display() {
    fill(100, 200, 100);
    stroke(0);
    rect(pos.x, pos.y-18, 20, 20);
    if (!collide) {
      vel.y += 0.3;
      vel.mult(0.9);
      pos.add(vel);
    }
  }
}


//getter methods

public int getXPos() {
  return xPos;
}

public int getYPos() {
  return xPos;
}

public boolean getCollide() {
  return collide;
}


//setter methods

public void setXPos(int xPos) {
  this.xPos = xPos;
}

public void setYPos(int yPos) {
  this.yPos = yPos;
}

public void setCollide(boolean collide) {
  this.collide = collide;
}
