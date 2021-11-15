ParkingLot lot;
Street Nstreet, Sstreet;
Gate ENTgate, EXITgate;
float fee = 0;
int spaces = 60;
PriceCalculator price;
ControlPanel panel;
int customers;
float profit;
Date time = new Date (0, 0, 0, true);
boolean play = true;
Car cars [];
Oncoming Onc_cars [];

void setup ()
{
  size(900, 650);
  lot = new ParkingLot (825, 370);
  Nstreet = new Street ("North City Street", 120, 40);
  Sstreet = new Street ("South City Street", 590, 40);
  ENTgate = new Gate (420, 205);
  EXITgate = new Gate (425, 585);
  panel = new ControlPanel ();
  cars = new Car [300];
  for (int i = 0, x = -50; i < 300; i++, x -= (int)random(150, 300))
  {
    cars [i] = new Car (4);
    cars [i].x = x;
  }
  Onc_cars = new Oncoming [300];
  for (int i = 0, x = 1000; i < 300; i++, x += (int)random(350, 450))
  {
    Onc_cars [i] = new Oncoming (5);
    Onc_cars [i].x = x;
  }
}

void draw ()
{
  int temp;
  if (play == true)
  {  
    background (colour());
    lot.drawLot();
    Nstreet.draw2Way();
    Sstreet.draw2Way();
    if (spaces > 0)
    {
      ENTgate.openGate(true);
      EXITgate.openGate(true);
    }
    else
    {
      ENTgate.closeGate(false);
      EXITgate.openGate(true);
    }
    
    for (double i = 0; i < 60; i += 0.000009)
      temp = 1;
      
    panel.drawPanel();
    for (int i = 0; i < 300; i++)
    {
      cars [i].moveCar();
      cars [i].drawCar();
      Onc_cars [i].drawCar();
    }
  }
}

void mouseClicked ()
{
  if (mouseX >= 379 && mouseX <= 445 && mouseY >= 24 && mouseY <= 92)
    play = true;
  if (mouseX >= 455 && mouseX <= 521 && mouseY >= 24 && mouseY <= 92)
    play = false;
}

int colour ()
{
  if (time.hour < 7 && time.before_noon || time.hour >= 8 && time.before_noon == false && time.hour != 12 || time.hour == 12 && time.before_noon)
    return #044612;
  else
    return #07AD24;
}

boolean ran ()
{
  boolean random;
  if (spaces > 0)
  {
    int ran = (int)random (0, 4);
    if (ran == 0)
      random = false;
    else
      random = true;
    return random;
  }
  else
    return random = false;
}

float time_spent ()
{
  float array [] = {0.0625, 0.25, 1};
  return array [(int)random(3)];
}

int Lane ()
{
  int arr [] = {598, 634};
  return arr [(int)random(2)];
}