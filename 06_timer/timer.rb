class Timer
  #attr_reader :seconds
  def initialize
  	@seconds = 0
  	@minutes = 0
  	@hours   = 0
  	@time_string = ""
  end

  def seconds
  	@seconds
  end

  def seconds= (value)
  	new_seconds = @seconds + value
  	if(new_seconds >= 60)
  		new_minutes = new_seconds / 60
  		new_seconds -= 60 * (new_seconds / 60)
  	end

  	@seconds = new_seconds
  	self.minutes = new_minutes unless new_minutes.nil?
  end

  def minutes= (value)
  	new_minutes = @minutes + value
  	if (new_minutes >= 60)
  		new_hours = new_minutes / 60
  		new_minutes -= 60  * (new_minutes / 60)
  	end
  	puts @minutes.to_s + "<=" + new_minutes.to_s
  	@minutes = new_minutes
  	puts @minutes
  	self.hours = new_hours if !new_hours.nil?
  end

  def minutes
  	@minutes
  end

  def hours= (value)
  	@hours = value
  end

  def hours
  	@hours
  end
  def time_string 
  	hours_string   = to_two_digit_string(hours)
  	minutes_string = to_two_digit_string(minutes)
  	seconds_string = to_two_digit_string(seconds)
  	@time_string = "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end

  def to_two_digit_string(number)
  	number_string = ""
  	if(number < 10)
  		number_string = "0#{number}"
  	elsif(number < 100)
  		number_string = number.to_s
  	else
  		return 666
  	end
  end
end
timer = Timer.new
timer.seconds =  60
puts " - " + timer.time_string
