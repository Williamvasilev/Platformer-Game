public class Platform {

  private PVector pos;

  //platform coords
  Platform(float x, float y) {
    pos = new PVector(x, y);
  }
  // platform
  void display() {
    stroke(255);

    line(pos.x, pos.y, pos.x+75, pos.y);
  }
  //colision
  boolean collide(PVector p) {
    if (p.x >  pos.x && p.y > pos.y && p.x < pos.x+75 && p.y < pos.y+10) {
      return true;
    }
    return false;
  }
}

//getter methods

public PVector getPos() {
  return pos;
}

//setter methods

public void setPos(PVector pos) {
  this.pos = pos;
}
