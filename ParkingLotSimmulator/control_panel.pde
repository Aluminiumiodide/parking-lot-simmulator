class ControlPanel
{
  int hours;
  
  void drawPanel ()
  {
    time.addMinute();
    fill (255);
    text (time.toString(), 825, 20);
    fill (0);
    strokeWeight (3);
    stroke (255);
    
    //picture of moon/sun
    if (time.hour < 7 && time.before_noon || time.hour >= 8 && time.before_noon == false && time.hour != 12 || time.hour == 12 && time.before_noon)
    {
      rect (765, 30, 120, 80);
      fill (255);
      ellipse (830, 70, 55, 55);
      stroke (0);
      fill (0);
      ellipse (813, 65, 55, 55);
      
      /*//stars
      if (time.minute == 1 || time.minute == 4 || time.minute == 7)
      {
        stroke (255);
        fill (255);
        ellipse ((int)random(770, 797), (int)random(35, 52), random (1), random (1));
        ellipse ((int)random(797, 824), (int)random(69, 105), random (1), random (1));
        ellipse ((int)random(852, 880), (int)random(87, 105), random (1), random (1));
      }
      if (time.minute == 2 || time.minute == 5 || time.minute == 8)
      {
        ellipse ((int)random(770, 797), (int)random(69, 105), random (1), random (1));
        ellipse ((int)random(797, 824), (int)random(87, 105), random (1), random (1));
        ellipse ((int)random(852, 880), (int)random(35, 52), random (1), random (1));
      }
      if (time.minute == 3 || time.minute == 6 || time.minute == 9)
      {
        ellipse ((int)random(770, 797), (int)random(87, 105), random (1), random (1));
        ellipse ((int)random(797, 824), (int)random(35, 52), random (1), random (1));
        ellipse ((int)random(852, 880), (int)random(69, 105), random (1), random (1));
      }*/
    }
    else
    {
    fill (#12D5FA);
    rect (765, 30, 120, 80);
    stroke (#F0F725);
    fill (#F0F725);
    ellipse (830, 70, 55, 55);
    }
    
    //simmulation values
    fill (#A5BCAA);
    stroke (0);
    rect (540, 8, 200, 100);
    fill (0);
    textSize (18);
    text ("Simulation Values", 640, 33);
    textSize (14);
    textAlign (LEFT);
    text ("Net Profit:", 550, 55);
    text ("Time Ellapsed:", 550, 75);
    text ("Customers:", 550, 95);
    textAlign (LEFT);
    text ("$" + profit + "0", 667, 55);
    text (hours + " Hours", 667, 75);
    text (customers, 667, 95);
  
    //parking rates
    fill (#A5BCAA);
    rect (10, 8, 350, 100);
    fill (0);
    textSize (18);
    textAlign (CENTER);
    text ("Parking Rates", 185, 33);
    textSize (14);
    textAlign (LEFT);
    text ("$3.00 / Hour       Mon - Fri              8AM to 6PM", 20, 55);
    text ("$2.00 / Hour       Saturday               8AM to 6PM", 20, 75);
    fill (#7A8CF7);
    stroke (#A5BCAA);
    rect (18, 80, 331, 20);
    fill (0);
    text ("$1.50 / Hour       All Other Times", 20, 95);
  
    //pause/play button
    fill (#A5BCAA);
    stroke (0);
    rect (370, 15, 160, 86);
    strokeWeight (3);
    fill (#0DFA0E);
    ellipse (412, 58, 65, 67);
    fill (#FC9C00);
    ellipse (488, 58, 65, 67);
    fill (255);
    triangle (400, 37, 400, 77, 433, 57);
    rect (472, 37, 12, 40, 6);
    rect (492, 37, 12, 40, 6);
    
    if (time.minute == 0)
      hours++;
  }
}