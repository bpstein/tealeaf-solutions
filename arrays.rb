# 1. Check to see if number appears in array

puts "Which number would you like to check for?"
arr = [1, 3, 5, 7, 9, 11]
number = gets.chomp.to_i


if arr.include?(number)
	puts "#{number} is in the array."
else 
	puts "#{number} is not in the array."
end

# 7. Iterate and build arrays
a = [1, 2, 3, 4, 5]
b = []

b << a.map {|num| num + 2}

p a
p b
