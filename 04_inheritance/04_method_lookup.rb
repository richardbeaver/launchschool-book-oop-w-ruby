module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

##

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class Dog < Animal
  include Swimmable
  include Climbable
end

##

p Animal.ancestors                   # => [Animal, Walkable, Object, Kernel, BasicObject]

fido = Animal.new

# Finds method in own class
puts fido.speak                      # => 'I'm an animal, and I speak!'

# Looks to next class / module in method lookup chain
# Finds `walk` method in `Walkable` module
puts fido.walk                       # => 'I'm walking.'

# Can't find method in any class or module in method lookup chain
# fido.swim                            # => Causes a `NoMethodError`

##

# Last module included comes first
# Superclass `Animal` and its modules are included
p Dog.ancestors          # => [Dog, Climbable, Swimmable, Animal, Walkable, Object, Kernel, BasicObject]
