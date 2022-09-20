import javax.swing.JOptionPane;
int xPos;
int yPos;
String words[];
PImage img;
Player player;
ArrayList<Platform> p;
boolean collide = false;
PVector pos;
PVector vel;



void setup()

{
  img = loadImage ("forest.jpg");

  JOptionPane.showMessageDialog(null, 
    "Press OK to start");

  size(1000, 600);
  frameRate(120);
  player = new Player(xPos, yPos);
  float y = random(height);

  // spawns platforms randomly
  p = new ArrayList<Platform>();
  for (int i = 0; i < width/75; i++) {
    p.add(new Platform(i*75, y));
    y += random(-100, 100);
  }

  pos = new PVector(20, 100); // coord where player spawns
  vel = new PVector();


  words = new String[7];

  words[0] = "The";
  words[1] = "Name";
  words[2] = "Of";
  words[3] = "The";
  words[4] = "Player";
  words[5] = "Is";
  words[6] = "Tom";
  for (int i=0; i < words.length; i++)
  {
    println(words[i]);
  }
}

void draw()
{

  image(img, 0, 0);
  player.update(); // updates player location
  player.display(); // displays player location
  fill(255);

  //diplays platforms and lets player to collide with them
  for (Platform i : p) {
    i.display();
    if (i.collide(pos)) {
      collide = true;
      pos.y = i.pos.y;
    }
  }
  // resets player and platform
  if (pos.y > height) {
    setup();
  }
  if (pos.x > width) {
    setup();
  }
}
