class Car
{
  float v, lengthofstay;
  int lane = Lane();
  float x = -50, y = 170;
  int R, G, B;
  int a, b, c, d;
  boolean parking = ran();
  Date enter_time, exit_time;
 
  Car (float speed)
  {
    v = speed;
    lengthofstay = v*time_spent();
    R = (int)random(251);
    G = (int)random(251);
    B = (int)random(251);
    a = (int)random(3);
    b = (int)random(2);
    c = (int)random(2);
    d = (int)random(5);
    enter_time = new Date (0, 0, 0, true);
    exit_time = new Date (0, 0, 0, true);
  }
 
  void moveCar ()
  {
    if (parking && x >= 445 && y <= lane)
    {
      if (y >= 286 && y <= 482)
        y += lengthofstay;
      else
        y += v;  
    }
    else
      x += v;
  }
 
  void drawCar ()
  {
    if (parking && x >= 445 && (y >= 170 && y <= 285 || y >= 483 && y <= lane))
    {
      strokeWeight (1);
      fill (R, G, B);
      rect (x, y, 20, 40, 2, 2, 5, 5);
      fill (#11B2D1);      //windshield
      rect (x+2, y+2, 16, 7);
      rect (x+2, y+21, 16, 7);
      fill (#FFF303);      //headlights
      ellipse (x+6, y+37, 4, 4);
      ellipse (x+16, y+37, 4, 4);
      fill (0);      //tires
      rect (x-2, y+5, 2, 8);
      rect (x+20, y+5, 2, 8);
      rect (x-2, y+25, 2, 8);
      rect (x+20, y+25, 2, 8);
    }
    else if (x < 950 && (y == 170 || y >= lane))
    {
      strokeWeight (1);
      fill (R, G, B);
      rect (x, y, 40, 20, 2, 5, 5, 2);
      fill (#11B2D1);      //windshield
      rect (x+6, y+2, 7, 16);
      rect (x+25, y+2, 7, 16);
      fill (#FFF303);      //headlights
      ellipse (x+38, y+5, 4, 4);
      ellipse (x+38, y+15, 4, 4);
      fill (0);      //tires
      rect (x+5, y-2, 8, 2);
      rect (x+25, y-2, 8, 2);
      rect (x+5, y+20, 8, 2);
      rect (x+25, y+20, 8, 2);
    }
    else if (parking && x >= 445 && y >= 285 && y <= 548)
    {
      strokeWeight (1);
      fill (R, G, B);
      rect (lot.section_array[a][b].stall_array[c][d].posX+15, lot.section_array[a][b].stall_array[c][d].posY+10, 40, 20, 2, 5, 5, 2);
      fill (#11B2D1);      //windshield
      rect (lot.section_array[a][b].stall_array[c][d].posX+21, lot.section_array[a][b].stall_array[c][d].posY+12, 7, 16);
      rect (lot.section_array[a][b].stall_array[c][d].posX+40, lot.section_array[a][b].stall_array[c][d].posY+12, 7, 16);
      fill (#FFF303);      //headlights
      ellipse (lot.section_array[a][b].stall_array[c][d].posX+53, lot.section_array[a][b].stall_array[c][d].posY+15, 4, 4);
      ellipse (lot.section_array[a][b].stall_array[c][d].posX+53, lot.section_array[a][b].stall_array[c][d].posY+25, 4, 4);
      fill (0);      //tires
      rect (lot.section_array[a][b].stall_array[c][d].posX+20, lot.section_array[a][b].stall_array[c][d].posY+8, 8, 2);
      rect (lot.section_array[a][b].stall_array[c][d].posX+40, lot.section_array[a][b].stall_array[c][d].posY+8, 8, 2);
      rect (lot.section_array[a][b].stall_array[c][d].posX+20, lot.section_array[a][b].stall_array[c][d].posY+30, 8, 2);
      rect (lot.section_array[a][b].stall_array[c][d].posX+40, lot.section_array[a][b].stall_array[c][d].posY+30, 8, 2);
    }
    
    if (y == 286)
    {
      spaces--;
      customers++;
      enter_time.today = time.today;
      enter_time.hour = time.hour;
      enter_time.minute = time.minute;
      enter_time.before_noon = time.before_noon;
      if (lot.section_array[a][b].stall_array[c][d].occupied)
      {
        while (lot.section_array[a][b].stall_array[c][d].occupied == true)
        {
        a = (int)random(3);
        b = (int)random(2);
        c = (int)random(2);
        d = (int)random(5);
        }
        lot.section_array[a][b].stall_array[c][d].occupied = true;
      }
      else
        lot.section_array[a][b].stall_array[c][d].occupied = true;
    }
    
    if (y == 482)
    {
      spaces++;
      exit_time.today = time.today;
      exit_time.hour = time.hour;
      exit_time.minute = time.minute;
      exit_time.before_noon = time.before_noon;
      price = new PriceCalculator (enter_time, exit_time);
      fee = price.Calculate();
      profit += fee;
      lot.section_array[a][b].stall_array[c][d].occupied = false;
    }
  }
}