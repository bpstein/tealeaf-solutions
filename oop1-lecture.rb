# OOP in Ruby - first lecture 

# 1. classes and objects
# 2. methods contain behaviors
# 3. instance variables contain states
# 4. objects are instantiated from classes, and contain states and behaviors
# 5. class variables and methods
# 6. compare with procedural

class Dog
	attr_accessor :name, :height, :weight

	@@count = 0 

	def self.total_dogs
		"Total number of dogs: #{@@count}"
	end

	def initialize(n, h, w)
		@name = n 
		@height = h
		@weight = w 
		@@count += 1
	end

	def speak
		@name + " barks!"
	end

	def info
		"#{name} is #{height} tall and weighs #{weight} pounds"
	end

	def update_info(n, h, w)
		self.name = n
		self.height = h
		self.weight = w
	end
end

# Instantiating the Dog objects
teddy = Dog.new('teddy', 3, 95)
fido = Dog.new('fido', 1, 35)

# Print output
puts teddy.speak
puts fido.speak

puts teddy.info
teddy.update_info('Roosevelt', 5, 125)
puts teddy.info

puts Dog.total_dogs
