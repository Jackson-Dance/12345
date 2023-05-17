// jackson dance | 17 april | EtchASketch

int x, y;
PImage pic;

void setup() {
  size(800, 658);
  x = width/2;
  y = height/2;
  background(128);
  pic = loadImage("Etch-2.png");
  pic.resize (800, 658);
}

void draw() {
  //background(128);
 image (pic,0,0);
  strokeWeight(int(random(5,10)));
  fill(int(random(50,200)),int(random(50, 200)),int(random(50,200)));
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      moveLeft(10);
    }
    if (key == 's' || key == 'S') {
      moveDown(10);
    }
    if (key == 'w' || key == 'W') {
      moveUp(10);
    }
    if (key == 'd' || key == 'D') {
      moveRight(10);
    }
  }
}

void mousePressed() {
  saveFrame("line-######.png");
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(10);
    } else if (keyCode == DOWN) {
      y = y + 10;
    } else if (keyCode == RIGHT) {
      moveRight (10);
    } else if (keyCode == LEFT) {
      x = x - 10;
    }
  }
}
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-1);
  }
  y = y - rep;
}
