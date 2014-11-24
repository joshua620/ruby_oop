class MyCar 

  attr_accessor :color
  attr_reader :year

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

end

car = MyCar.new("Murano", 2010, "champagne")
car.speed
car.accelerate(65)
car.speed
car.decelerate(40)
car.speed
car.decelerate(5)
car.speed
car.turn_off
car.speed
puts ""
puts "Your car's color is #{car.color}."
puts "~ Going for a paint job!"
car.color = "lime green"
puts "Your car's color is #{car.color}."
puts ""
puts "Your car was born in #{car.year}."