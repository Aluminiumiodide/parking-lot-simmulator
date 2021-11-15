class Oncoming
{
  float v;
  float x = 1000, y = 130;
  int R, G, B;
  
  Oncoming (float speed)
  {
    v = speed;
    R = (int)random(251);
    G = (int)random(251);
    B = (int)random(251);
  }
  
  void drawCar ()
  {
    x -= v;
    strokeWeight (1);
    fill (R, G, B);
    rect (x, y, 40, 20, 5, 2, 2, 5);
    fill (#11B2D1);      //windshield
    rect (x+27, y+2, 7, 16);
    rect (x+8, y+2, 7, 16);
    fill (#FFF303);      //headlights
    ellipse (x+2, y+5, 4, 4);
    ellipse (x+2, y+15, 4, 4);
    fill (0);      //tires
    rect (x+27, y-2, 8, 2);
    rect (x+7, y-2, 8, 2);
    rect (x+27, y+20, 8, 2);
    rect (x+7, y+20, 8, 2);
  }
}