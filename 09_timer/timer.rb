
class Timer

#there are 86,400 seconds in 24 hours
# which is 24 x 60 x 60
#there are 3600 seconds in an hour
#function should output HH:MM:SS


  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end


  def time_string

      hours = (@seconds/3600)

      @seconds = @seconds - (hours*3600)

      minutes = @seconds / 60

      @seconds = @seconds % 60

      padded(hours) + ":" + padded(minutes) + ":" + padded(@seconds)

  end

  def padded (num)
    if num < 10
      "0" + num.to_s
    else
      num.to_s
    end
  end



# very pleased with myself

end
