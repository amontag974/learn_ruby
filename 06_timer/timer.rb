class Timer
  
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    "#{get_hours(@seconds)}:#{get_minutes(@seconds)}:#{get_seconds(@seconds)}"
  end

  def get_hours seconds
    hours = seconds / 3600
    padded(hours)
  end

  def get_minutes seconds
    minutes = seconds % 3600 / 60
    padded(minutes)
  end

  def get_seconds seconds
    seconds = seconds % 3600 % 60
    padded(seconds)
  end

  def padded number
    if number < 10
      "0" + number.to_s
    else
      number.to_s
    end
  end
end
