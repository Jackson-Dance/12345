class player {
  int x, y;
  PImage p1;

  player() {
    x = width/2;
    y = height/2;
    p1 = loadImage("poloPlayer.png");
    //p1.resize(150,150);
  }

  void display() {
    imageMode(CENTER);
    p1.resize(160, 160);
    image(p1, x, y);
  }
  void move(char dir) {
    if (dir == 'l') {
      x = x -10;
    } else if (dir == 'r') {
      x = x+10;
    }
  }
}
