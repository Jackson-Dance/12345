class goalie {
  int x, y, speed;
  boolean right;
  PImage g1;

  goalie() {
    x = width/2;
    y = height/6;
    g1 = loadImage("goalie.png");
    speed = 2;
    right = true;
  }

  void display() {
    imageMode(CENTER);
    g1.resize(160, 160);
    image(g1, x, y);
  }


  void move () {
    if (right == true) {
      x += speed;
      if (x>325) {
        speed *= -1;
        right = false;
      }
    } else {
      x += speed;
      if (x<175) {
        speed *= -1;
        right = true;
      }
    }
  }
}
