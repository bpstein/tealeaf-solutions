# 1. Cannot instantiate a module
# 2. Can use them for mix-ins to extract common behaviour, and use them for namespacing

class Animal
	attr_accessor :name

	def initialize(n)
		@name = n 
	end

	def eat 
		"#{name} is eating"
	end

	def speak
		"#{name} is speaking!"
	end
end

class Mammal < Animal
	def warm_blooded?
		true
	end
end

# In order to use this module, your class must respond to a "name" method call
module Fetchable
	def fetch
		"#{name} is fetching!"
	end
end

module Swimmable
	def swim
		"I'm swimming!"
	end
end

class Dog < Mammal
	include Swimmable
	def fetch 
		"#{name} is fetching!"
	end

	def speak 
	"#{name} is barking!" 
	end
end

class Cat < Mammal 
	def speak
		"#{name} is meowing!"
	end
end 

teddy = Dog.new('teddy')
puts teddy.name
puts teddy.swim
puts teddy.fetch
puts teddy.eat
puts teddy.fetch
puts teddy.speak
puts teddy.warm_blooded?

kitty = Cat.new('kitty')
puts kitty.name
puts kitty.eat
puts kitty.speak

puts Dog.ancestors