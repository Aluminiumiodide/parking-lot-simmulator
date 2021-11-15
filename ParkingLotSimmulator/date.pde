class Date
{
  final String days [] = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today, hour, minute;
  boolean before_noon;
  
  Date (int d, int h, int m, boolean beforeNoon)
  {
    today = d % 7;
    if (h == 12 || h == 0)
      hour = 12;
    else
      hour = h % 12;
    minute = m % 60;
    before_noon = beforeNoon;
  }
  
  Date (Date d)
  {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;
  }
  
  void addHour ()
  {
    if (hour == 11 && before_noon == true)
    {
      hour++;
      before_noon = false;
    }
    else if (hour == 11 && before_noon == false)
    {
      hour++;
      before_noon = true;
      today = ++today % 7;
    }
    else if (hour == 12)
      hour = 1;
    else
      hour++;
  }
  
  void addMinute ()
  {
    if (minute == 59)
    {
      if (hour == 11 && before_noon == true)
      {
        hour++;
        minute = 0;
        before_noon = false;
      }
      else if (hour == 11 && before_noon == false)
      {
        hour++;
        minute = 0;
        before_noon = true;
        today = ++today % 7;
      }
      else if (hour == 12)
      {
        hour = 1;
        minute = 0;
      }
      else
      {
        hour++;
        minute = 0;
      }
    }
    else
      minute++;
  }
  
  String toString ()
  {
    String date = days[today];
    if (hour < 10)
      date += " 0" + hour;
    else
      date += " " + hour;
    if (minute < 10)
      date += ":0" + minute;
    else
      date += ":" + minute;
    if (before_noon)
      date += "AM";
    else
      date += "PM";
    return date;
  }
  
  boolean equal (Date date)
  {
    if (date.days[today] == days[today] && date.hour == hour && date.minute == minute && date.before_noon == before_noon)
      return true;
    else
      return false;
  }
}