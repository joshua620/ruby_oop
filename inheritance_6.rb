module Towable
  def tow
    "The truck is towing something."
  end
end

class Vehicle

  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(model, year, color)
    @model = model
    @year = year
    @color = color
    @speed = 0
    @@number_of_vehicles += 1
  end

  def self.total_number_of_vehicles
    puts "The number of vehicles is #{@@number_of_vehicles}."
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

  def to_s
    "Your vehicle is a #{year}, #{color} #{model}. Nice!"
  end

  def age 
    puts "The vehicle is #{calculate_age} years old."
  end

  private 

  def calculate_age
    Time.new.year - @year
  end

end

class MyCar < Vehicle
  CAN_TOW = "false"
end

class MyTruck < Vehicle
  include Towable
  CAN_TOW = "true"
end

car = MyCar.new("Murano", 2010, "champagne")
car.age