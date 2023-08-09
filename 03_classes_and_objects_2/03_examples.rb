# Notes on `self`

# Use `self` when:
# - Calling setter methods from within the class
# - Defining class methods

# From within a class, when an instance method uses `self`, it references
# the calling object
#   - `self.name=` acts the same as calling `<instance>.name=` from outside
#     the class, but the variable that references the calling object is not
#     in scope inside the method

# From within a class, but outside an instance method, `self` refers to the
# class itself
# Defining a method as `self.<method>` defines that method on the class

class GoodDog
  # Constant
  DOG_YEARS = 7

  attr_accessor :name, :age

  # Class variable
  @@number_of_dogs = 0

  def initialize(name, age)
    @@number_of_dogs += 1
    self.name = name
    self.age = age * DOG_YEARS
  end

  # Class method
  def self.total_number_of_dogs
    @@number_of_dogs
  end

  # Custom `to_s` method to override default
  def to_s
    "My name is #{name} and I'm #{age} years old in dog years."
  end
end

##

puts GoodDog.total_number_of_dogs          # => 0

sparky = GoodDog.new('Sparky', 4)
fido = GoodDog.new('Fido', 2)

puts GoodDog.total_number_of_dogs          # => 2

puts sparky.age                            # => 28

puts sparky               # => 'My name is Sparky and I'm 28 years old in dog years.'

# - Helpful for debugging, don't want to override this
p sparky                  # => Prints object class name and an encoding (calls `.inspect`, not `.to_s`)

# `to_s` also called in string interpolation
p "#{sparky}"             # => 'My name is Sparky and I'm 28 years old in dog years.'
