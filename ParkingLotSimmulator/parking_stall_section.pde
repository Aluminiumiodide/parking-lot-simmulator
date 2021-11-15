class ParkingStallSection
{
  int row, col;
  int x, y;
  ParkingStall stall_array [][];
  
  ParkingStallSection (int r, int c, int x, int y)
  {
    stall_array = new ParkingStall [r][c];  
    for (int i = 0, yCor = y ; i < stall_array.length; i++, yCor += 40)
      for (int j = 0, xCor = x; j < stall_array[i].length; j++, xCor += 72)
        stall_array[i][j] = new ParkingStall(xCor, yCor, 72, 40);
  }
  
  void drawSection ()
  {
    for (int i = 0; i < stall_array.length; i++)
      for (int j = 0; j < stall_array[i].length; j++)
        stall_array[i][j].drawStall();
  }
}