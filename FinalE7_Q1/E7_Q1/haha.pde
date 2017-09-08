class Ball {
  float R;
  float G;
  float B;
  float x;
  float y;
  float z;
  float speedx;
  float speedy;
  float speedz;
  float dia;

  Ball(float r, float g, float b, float size, float xx, float yy, float zz, float speedxx, float speedyy, float speedzz) {
    dia = size;
    R = r;
    G = g;
    B = b;
    speedx = speedxx;
    speedy = speedyy;
    speedz = speedzz;
    x = xx;
    y = yy;
    z = zz;
  }

  void display() {
  pushMatrix();
    noStroke();
    //strokeWeight(.5);
    //stroke(255);
      translate(x, y, z); 

    sphere(dia); 
    fill(R, G, B);
    lights();
    //  x = width/2;
    // y = height/2;
    //  speedx = 2;
    //  speedy = 2;
    popMatrix();
    x += speedx;
    y += speedy;
  }

  void thingi() {

    // animate


    // bounce
    if (x < 0+dia/2 || x > width-dia/2) {
      speedx = speedx * -1;
    }

    if (y < 0+dia/2 || y > height-dia/2) {
      speedy = speedy * -1;
    }
  }
}