class Timer
{
  int resetTime;
  int time;
  
  Timer(int newTime)
  {
    time = newTime;
  }
  
  void start()
  {
    resetTime = millis();
  }
  
  boolean isFinished()
  {
    if ( (millis() - resetTime) > time)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}