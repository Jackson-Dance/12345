class ball {
  int x, y, speed;
  int ball;
  ball b1;

  ball(int x) {
    this.x = x;
    y = height/2;
    fill(255);
    ellipse(p1.x, p1.y, 100, 30);
    speed = 4;
  }
  void display () {
    fill(255, 200, 0);
    ellipse(p1.x + 10, p1.y, 10, 10);
  }

  void move () {
    y -= speed;
  }
}
