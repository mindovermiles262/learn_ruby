class Timer
  #write your code here
  attr_reader :hours, :minutes, :seconds;

  def initialize
    @hours = 00;
    @minutes = 00;
    @seconds = 00;
  end

  def time_string
    @time_string = "%02d" % @hours + ":" + "%02d" % @minutes + ":" + "%02d" % @seconds
  end

  def seconds=(sec)
    hr = sec/3600;
    sec -= (hr * 3600);
    min = sec/60;
    sec -= (min * 60);
    @hours += hr;
    @minutes += min;
    @seconds += sec;
  end
end
