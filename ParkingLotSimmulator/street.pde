class Street
{
  String name;
  float y;
  float w;
  
  Street (String n, float a, float b)
  {
    name = n;
    y = a;
    w = b;
  }
  
  void draw1Way ()
  {
    fill(#777C73);
    stroke (255);
    strokeWeight(4);
    rect (-10, y, 920, w);
    
    stroke (#777C73);
    rect (415, 195, 70, 20);
    rect (420, 575, 60, 20);
    
    fill (0);
    textSize(18);
    textAlign(CENTER);
    text (name, 450, y+25);
  }
  
  void draw2Way ()
  {
    fill(#777C73);
    stroke (255);
    strokeWeight(4);
    rect (-10, y, 920, 2*w);
    
    stroke (#777C73);
    rect (415, 195, 70, 20);
    rect (420, 575, 60, 20);
    
    fill (0);
    textSize(18);
    textAlign(CENTER);
    text (name, 450, y+25);
    
    for (int i = 5; i < width; i += 35)
    {
      if (y > 450)
        fill (255);
      else
        fill (#F6FA26);
      rect (i, y+w-4, 20, 7);
    }
  }
}