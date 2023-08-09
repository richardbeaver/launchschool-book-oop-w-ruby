# Two ways to inherit behavior:
# Class inheritance => specializes the type of the superclass
# Mixin modules (interface inheritance) => adds extra functionality to
#   specific classes

# Common module naming convention is to use the "-able" suffix on a verb
# that describes the behavior the module is modeling
module Swimmable
  def swim
    "I'm swimming!"
  end
end

##

class Animal
end

##

class Fish < Animal
  include Swimmable      # Fish can swim
end

class Mammal < Animal
end

##

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable      # Dogs can swim too
end

##

nemo = Fish.new
sparky = Dog.new
paws = Cat.new

puts nemo.swim              # => 'I'm swimming!'
puts sparky.swim            # => 'I'm swimming!'
# puts paws.swim              # => Causes a `NoMethodError`
