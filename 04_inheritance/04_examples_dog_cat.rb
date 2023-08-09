class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    'Hello!'
  end
end

class Dog < Animal
  attr_reader :color

  def initialize(name, color)
    super(name)
    @color = color
  end

  # Overriding the `Animal` class' `speak` method
  def speak
    # Calling `super` starts looking in this class' superclass for the method
    # - Here, it would start in the `Animal` class looking for `speak`, and
    #   would return `'Hello!'`
    # super

    "#{name} says arf!"
  end
end

class Cat < Animal
end

##

sparky = Dog.new('Sparky', 'brown')
paws = Cat.new('Paws')

puts sparky.speak               # => 'Sparky says arf!'
puts paws.speak                 # => 'Hello!'

puts sparky.color               # => 'brown'
