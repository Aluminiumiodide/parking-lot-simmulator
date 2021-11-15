class Gate
{
  boolean gate_open;
  float x, y;
  
  Gate (float a, float b)
  {
    x = a;
    y = b;
  }
  
  void openGate (boolean status)
  {
    gate_open = status;
    stroke (0);
    fill (255);
    rect (320, 205, 90, 20);
    rect (320, 545, 90, 20);
    fill (#D88909);
    rect (320, 225, 90, 20);
    rect (320, 565, 90, 20);

    fill (0);
    textSize (14);
    textAlign (CENTER);
    text ("ENTRANCE", 365, 220);
    text ("Spaces: " + spaces, 365, 240);
    text ("EXIT", 365, 560);
    text ("Fee: $" + fee + "0", 365, 580);

    stroke (0);
    if (y < height/2)
      line (x, y, x+15, y+45);
    else
      line (x, y, x+8, y-45);
    fill (#05FF34);
    ellipse (x, y, 10, 10);
  }
  
  void closeGate (boolean status)
  {
    gate_open = status;
    stroke (0);
    fill (255);
    rect (320, 205, 90, 20);
    rect (320, 545, 90, 20);
    fill (#D88909);
    rect (320, 225, 90, 20);
    rect (320, 565, 90, 20);

    fill (0);
    textSize (14);
    textAlign (CENTER);
    text ("ENTRANCE", 365, 220);
    text ("Spaces: " + spaces, 365, 240);
    text ("EXIT", 365, 560);
    text ("Fee: $" + fee + "0", 365, 580);

    stroke (0);
    line (x, y, x+55, y);
    fill (#FF0000);
    ellipse (x, y, 10, 10);
  }
}