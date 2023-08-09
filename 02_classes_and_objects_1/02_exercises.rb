class MyCar
  attr_accessor :color, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
end

##

my_car = MyCar.new(2015, 'red', 'Ferrari')
puts my_car.current_speed         # => 0

my_car.speed_up(40)
puts my_car.current_speed         # => 40

my_car.brake(10)
puts my_car.current_speed         # => 30

my_car.shut_down
puts my_car.current_speed         # => 0

puts my_car.year                  # => 2015

puts my_car.color                 # => red
my_car.color = 'black'  # `color` setter method is accessible outside the class
puts my_car.color                 # => black

my_car.spray_paint('green')
puts my_car.color                 # => green
