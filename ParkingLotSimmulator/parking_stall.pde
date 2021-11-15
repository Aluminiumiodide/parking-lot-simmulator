class ParkingStall
{
  boolean occupied;
  Date timeTaken;
  float posX, posY;
  float stallWidth, stallHeight;

  ParkingStall(float x, float y, float w, float h)
  {
    occupied = false;
    posX = x;
    posY = y;
    stallWidth = w;
    stallHeight = h;
  }

  void drawStall()
  {
    if (occupied)
      fill(color(255, 90, 71));
    else
      fill(color(152, 251, 152));
    strokeWeight(2);
    stroke(255);
    rect(posX, posY, stallWidth, stallHeight);
    strokeWeight(1);
  }

  void setStatus(boolean status, Date time)
  {
    occupied = status;
    if (occupied) 
      timeTaken = new Date(time);
  }
}