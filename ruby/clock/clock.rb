=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  def initialize(time)
    @time = {
      :hour => time[:hour] || 0,
      :minute => time[:minute] || 0
    }
  end

  def time
    @time
  end

  def to_s
    result = ""

    m = ""
    minutes = @time[:minute] ? @time[:minute] % 60 : 0
    if minutes < 10
      m = ":0#{minutes.to_s}"
    elsif minutes < 60
      m = ":#{minutes.to_s}"
    else
      m = ":00"
    end


    h = ""
    additional_hours = @time[:minute] ? @time[:minute] / 60 : 0
    @time[:hour] += additional_hours
    hours = @time[:hour] ? @time[:hour] % 24 : 0
    if hours < 10 
      h = "0"+ hours.to_s
    elsif hours < 24
      h = hours.to_s
    else
      h = "00"
    end

    result = h + m
    result
  end
end


# TODO: adding and subtracting time
clock = Clock.new(hour: 10, minute: 0)
(clock + Clock.new(minute: 3)).to_s 
# => "10:03"

clock = Clock.new(hour: 10, minute: 3)
(clock - Clock.new(minute: 30)).to_s 
# => "09:33"

# TODO: hours overflow
clock1 = Clock.new(hour: 10, minute: 37)
clock2 = Clock.new(hour: 34, minute: 37)
p clock1 = clock2

# TODO: negative hours
clock1 = Clock.new(hour: 22, minute: 40)
clock2 = Clock.new(hour: -2, minute: 40)
p clock1 = clock2

# TODO: negative minutes
clock1 = Clock.new(hour: 4, minute: 10)
clock2 = Clock.new(hour: 5, minute: -1490)
p clock1 = clock2

# TODO: full clock and zero clock
clock1 = Clock.new(hour: 24, minute: 0)
clock2 = Clock.new(hour: 0, minute: 0)
p clock1 = clock2