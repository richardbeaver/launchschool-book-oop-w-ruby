module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class Human
  include Speak
end

##

sparky = GoodDog.new
sparky.speak('Bark!')   # => 'Bark!'

bill = Human.new
bill.speak('Hi')        # => 'Hi'

puts sparky.class             # => GoodDog
puts bill.class               # => Human

p GoodDog.ancestors           # => [GoodDog, Speak, Object, Kernel, BasicObject]
puts GoodDog.ancestors.is_a? Array        # => true
puts GoodDog.ancestors[0].is_a? Class     # => true
