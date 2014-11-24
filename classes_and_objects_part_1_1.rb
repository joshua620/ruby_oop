class MyCar 

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

car = MyCar.new(2000, "champagne", "Murano")
car.speed
car.accelerate(65)
car.speed
car.decelerate(40)
car.speed
car.decelerate(5)
car.speed
car.turn_off
car.speed