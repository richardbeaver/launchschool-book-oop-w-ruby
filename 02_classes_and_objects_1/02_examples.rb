# The `new` class method triggers the `initialize` instance method, which is
# the class' constructor
class GoodDog
  # Instead of explicit getter and setter methods
  # Use `attr_reader` or `attr_writer` for only implementing getter / setter
  # for an instance variable
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
  end

  def change_info(new_name, new_height, new_weight)
    # Could also use `self` when accessing getter methods (like in the
    # `speak` and `info` methods below) or calling other instance methods
    # But style guide says not to use `self` unless required, and Rubocop
    # will say it's redundant
    self.name = new_name
    self.height = new_height
    self.weight = new_weight

    speak  # Instead of `self.speak`
  end

  # # Instead of `get_name`
  # def name
  #   @name
  # end
  #
  # # Instead of `set_name=`
  # def name=(new_name)
  #   @name = new_name
  # end

  def speak
    # Don't need to reference `@name`, we can use getter method
    "#{name} says arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall"
  end
end

##

sparky = GoodDog.new('Sparky', '24 inches', '37 lbs')
puts sparky.speak                     # => 'Sparky says arf!'

puts sparky.name                      # => 'Sparky'
puts sparky.height                    # => '24 inches'

sparky.name = 'Spartacus'
puts sparky.name                      # => 'Spartacus'

# Setter methods always return the value that's passed in; other values
# returned in method body would be ignored
puts(sparky.name = 'Spectacles')       # => 'Spectacles'

puts sparky.info                       # => 'Spectacles weighs 37 lbs and is 24 inches tall'
