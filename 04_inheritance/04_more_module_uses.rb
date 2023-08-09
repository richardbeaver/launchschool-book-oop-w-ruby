# module Mammal
#
#   # Using modules as namespaces:
#
#   class Dog
#     def speak(sound)
#       puts sound
#     end
#   end
#
#   class Cat
#     def say_name(name)
#       puts name
#     end
#   end
#
#   # Using modules as containers for methods:
#
#   def self.some_out_of_place_method(num)
#     num**2
#   end
# end
#
# # Namespaces let us:
# # - Group related classes
# # - Reduce chance of name collisions with other classes' methods
#
# # Using modules as containers is useful for methods that seem out of place
# # within the code
#
# ##
#
# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
#
# buddy.speak('Arf!')                 # => 'Arf!'
# kitty.say_name('kitty')                   # => 'kitty'
#
# ##
#
# value = Mammal.some_out_of_place_method(4)
