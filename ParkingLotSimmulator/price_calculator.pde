class PriceCalculator
{
  Date enter_time, exit_time;
  int minute, hour;
  float cost;
  
  PriceCalculator (Date start, Date finish)
  {
    enter_time = new Date (0, 0, 0, true);
    exit_time = new Date (0, 0, 0, true);
    
    enter_time.today = start.today;
    enter_time.hour = start.hour;
    enter_time.minute = start.minute;
    enter_time.before_noon = start.before_noon;
    
    exit_time.today = finish.today;
    exit_time.hour = finish.hour;
    exit_time.minute = finish.minute;
    exit_time.before_noon = finish.before_noon;
  }
  
  float Calculate ()
  {
    hour = exit_time.hour - enter_time.hour;
    minute = exit_time.minute - enter_time.minute;
    if (hour > 0 && enter_time.before_noon != exit_time.before_noon && exit_time.hour != 12)
      hour += 12;
    else if (hour > 0 && enter_time.before_noon == exit_time.before_noon && exit_time.hour == 12)
      hour += 12;
    else if (hour == 0 && enter_time.before_noon != exit_time.before_noon)
      hour += 12;
    else if (hour == 0 && enter_time.before_noon == exit_time.before_noon && minute < 0)
      hour += 24;
    else if (hour < 0)
      hour += 12;
    if (minute > 0)
      hour++;
      
    if (enter_time.today != 5 && enter_time.today != 6)
    {
      if ((enter_time.hour >= 8 && enter_time.before_noon) || (enter_time.hour == 12 && enter_time.before_noon == false))
        cost = hour * 3;
      else if (enter_time.hour <= 6 && enter_time.before_noon == false)
        cost = hour * 3;
      else
        cost = hour * 1.5;
    }
    else if (enter_time.today == 5)
    {
      if ((enter_time.hour >= 8 && enter_time.before_noon) || (enter_time.hour == 12 && enter_time.before_noon == false))
        cost = hour * 2;
      else if (enter_time.hour <= 6 && enter_time.before_noon == false)
        cost = hour * 2;
      else
        cost = hour * 1.5;
    }
    else
      cost = hour * 1.5;
    return cost;
  }
}