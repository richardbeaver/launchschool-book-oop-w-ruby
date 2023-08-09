# Access modifiers

# ======================

# Private
# Not accessible outside of the class

class Dog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = age
  end

  def info
    "#{name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = Dog.new('Sparky', 4)
puts sparky.info                    # => 'Sparky in human years is 28'
# puts sparky.human_years             # => `NoMethodError` (since `human_years` is a private method)

## =============================================

# Protected
# Not accessible outside the class, but can be accessed between class instances

class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

mallory = Person.new(64)
sterling = Person.new(42)

puts mallory.older? sterling               # => true
puts sterling.older? mallory               # => false

# puts mallory.age                           # => `NoMethodError`
