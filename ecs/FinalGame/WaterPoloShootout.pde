// jackson dance | 26 April 2023 |
boolean play;
player p1;
goalie g1;
ball b1;
PImage bg;
int score;
float g1Dist;

void setup() {
  size(500, 500);
  g1 = new goalie();
  p1 = new player();
  b1 = new ball(p1.x +60);
  bg = loadImage("bg.png");
  score = 0;
  play = false;
}

void draw() {
  g1Dist = dist(b1.x, b1.y, g1.x, g1.y);
  println(g1Dist);
  if (!play) {
    startscreen();
  } else {
    background(#0F6BB4);
    drawBackground();
    infoPanel();
    p1.display();
    g1.display();
    g1.move();
    b1.display();
    b1.move();
    if (keyPressed) {
      if (key == ' ') {
        b1.move();
      }
    }
    if (g1Dist<10) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    p1.move('l');
  } else if (key == 'd' || key == 'D') {
    p1.move('r');
  } else if (key == 's') {
    play = true;
  } else if (key == ' ') {
    b1.move();
  }
}

void drawBackground() {
  fill(0, 0, 20);
  rect(0, 400, width, 100);
  //bg.resize(400, 400);
  bg.resize(480, 480);
  image(bg, width/2, height/2);
}

void startscreen() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Water Polo Shootout!", width/2, 210);
  text("By : Jackson Dance", width/2, 250);
  text("Press s to begin", width/2, 290);
}

void gameOver() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Game Over!", width/2, 400);
  text("Score:" + score, width/2, 430);
  text("Press s to begin", width/2, 460);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, 50, 50);
  fill(0);
  textSize(12);
  text("Score : " + score, 25, 30);
}
