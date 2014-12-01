class MyCar 

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(model, year, color)
    @model = model
    @year = year
    @color = color
    @speed = 0
  end

def accelerate(number)
  @speed += number
  puts "You accelerate #{number} mph."
end

def decelerate(number)
  @speed -= number
  puts "You slow down #{number} mph."
end

def turn_off
  @speed = 0
  puts "Parked."
end

def speed
  puts "Your speed is #{@speed} mph."
end

def to_s
  "Your car is a #{year}, #{color} #{model}. Nice!"
end
end

car = MyCar.new("Murano", 2010, "champagne")

puts car