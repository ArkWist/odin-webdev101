class Timer
  attr_reader :seconds

  def initialize
    @seconds = 0
  end
  
  def time_string (seconds)
    @seconds = seconds
    hours = @seconds / 3600
    @seconds -= hours * 3600
    minutes = @seconds / 60
    @seconds -= minutes * 60
    return "#{pad(hours)}:#{pad(minutes)}:#{pad(@seconds)}"
  end

  def pad (time_unit)
    if time_unit >= 10
      return time_unit.to_s
    elsif time_unit >= 1
      return "0#{time_unit.to_s}"
    else
      return "00"
    end
  end
end