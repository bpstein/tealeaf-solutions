# 2. Upcase / downcase flow
def caps(string)
	if string.length > 10
		string.upcase
	else
		string
	end
end

puts caps("This is a test string.")
puts caps("2nd test.")
puts " "

# 3. Take number and report back upper and lower ranges
puts "Give me a number between 1 and 100."
number = gets.chomp.to_i
if number > 100
	puts "That number is more than 100."
elsif number < 0
	puts "That number is less than 0."
elsif number <=50
	puts "That number is between 0 and 50."
else 
	puts "That number is between 50 and 100."
end
puts " "


# 5. Rewrite using case statement

puts "Give me a number between 1 and 100."
number = gets.chomp.to_i

def bounds(number)
	if number > 100
		puts "That number is more than 100."
	elsif number < 0
		puts "That number is less than 0."
	elsif number <=50
		puts "That number is between 0 and 50."
	else 
		puts "That number is between 50 and 100."
	end
end

bounds(number)

def evaluate(number)
  case
	when number > 100
		puts "That number is more than 100."
	when number < 0
		puts "That number is less than 0."
	when number <=50
		puts "That number is between 0 and 50."
	else 
		puts "That number is between 50 and 100."
	end
end

puts "Give me a number between 1 and 100."
number = gets.chomp.to_i
evaluate(number)
puts " "