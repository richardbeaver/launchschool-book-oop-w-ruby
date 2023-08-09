module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

##

class Vehicle
  attr_accessor :color, :speed
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @@number_of_vehicles += 1
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def self.gas_mileage(gallons, miles)
    "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(acceleration)
    self.speed += acceleration
  end

  def brake(deceleration)
    self.speed -= deceleration
  end

  def shut_down
    self.speed = 0
  end

  def current_speed
    speed
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def age
    "My #{model} is #{years_old} years old"
  end

  private

  def years_old
    Time.now.year - year
  end
end

##

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{year} #{color} #{model} going #{speed} miles per hour"
  end
end

##

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{year} #{color} #{model} going #{speed} miles per hour"
  end
end

##

puts Vehicle.number_of_vehicles                      # => 0

my_car = MyCar.new(1996, 'red', 'Ferrari')
my_truck = MyTruck.new(2015, 'blue', 'pickup')

puts Vehicle.number_of_vehicles                      # => 2

puts my_car                       # => 'My car is a 1996 red Ferrari going 0 miles per hour'
puts my_truck                     # => 'My truck is a 2015 blue pickup going 0 miles per hour'

puts my_truck.can_tow?(1500)                     # => true
puts my_truck.can_tow?(2400)                     # => false
# puts my_car.can_tow?(1500)                         # => `NoMethodError`

p Vehicle.ancestors                           # => [Vehicle, Object, Kernel, BasicObject]
p MyCar.ancestors                             # => [MyCar, Vehicle, Object, Kernel, BasicObject]
p MyTruck.ancestors                           # => [MyTruck, Towable, Vehicle, Object, Kernel, BasicObject]

puts my_car.age                               # => My Ferrari is 27 years old (As of 2023)
puts my_car.calculate_age                     # => `NoMethodError` (Since `calculate_age` is a private method)
