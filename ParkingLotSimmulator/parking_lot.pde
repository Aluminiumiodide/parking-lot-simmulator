class ParkingLot
{
  int l, w;
  ParkingStallSection section_array [][];
    
  ParkingLot (int x, int y)
  {
    l = x;
    w = y;
    section_array = new ParkingStallSection [3][2];
    for (int i = 0, yCor = 235; i < section_array.length; i++, yCor += 120)
      for (int j = 0, xCor = 60; j < section_array [i].length; j++, xCor += 420)
        section_array [i][j] = new ParkingStallSection (2, 5, xCor, yCor);
  }
  
  void drawLot ()
  {
    fill(#777C73);
    stroke (255);
    strokeWeight(4);
    rect (35, 210, l, w, 20);
    for (int i = 0; i < section_array.length; i++)
      for (int j = 0; j < section_array[i].length; j++)
        section_array[i][j].drawSection();
  }
}