# OOP in Ruby

# 1. classes and objects

class Dog
	def initialize(n, h, w)
		@name = n 
		@height = h
		@weight = w 
	end

	def speak
		@name + " barks!"
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end

	def info
		"#{@name} is #{@height} tall and weighs #{@weight} pounds"
	end
end

# Instantiating the Dog objects
teddy = Dog.new('teddy', 3, 95)
fido = Dog.new('fido', 1, 35)

# Print output
puts teddy.speak
puts fido.speak

teddy.name = "Roosevelt"

puts teddy.info
puts fido.info