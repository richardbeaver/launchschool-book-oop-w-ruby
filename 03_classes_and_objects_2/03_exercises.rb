class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.gas_mileage(gallons, miles)
    "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "I'm a #{year} #{color} #{model} going #{speed} miles per hour"
  end
end

##

puts MyCar.gas_mileage(13, 351)         # => '27 miles per gallon of gas'

my_car = MyCar.new(2015, 'red', 'Ferrari')
puts my_car                               # => 'I'm a 2015 red Ferrari going 0 miles per hour'
