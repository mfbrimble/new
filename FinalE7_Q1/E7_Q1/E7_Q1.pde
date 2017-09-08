// E7_Q1 Maddie BRimble
Ball[] balls = new Ball[70];
Ball b;
void setup() {
  size(600, 600, P3D);

  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball(random(159, 197), random(161, 204), random(201, 243), random(25, 60), random(60, width), random(60, height), random(-10, 200), random(2, 5), random(2, 5), random(2, 5));
  }
    b = new Ball(random(246, 255), random(81, 100), random(42, 70), random(250, 300), random(90, width), random(90, height), random(-30, 100), random(2, 5), random(2, 5), random(2, 5));

}

void draw() {
  background(33);
  for (Ball b : balls) {
    b.thingi();
    b.display();
  }
}