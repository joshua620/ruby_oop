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

def spray_paint(paint_color)
  self.color = paint_color
end

def self.calculate_gas_mileage(refil_gallons, miles_drove)
  puts "#{miles_drove / refil_gallons} MPG."
end

MyCar.calculate_gas_mileage(12, 400)

end