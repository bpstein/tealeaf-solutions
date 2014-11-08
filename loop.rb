# 1. Write a loop the breaks with user input "STOP"

x = "y"
while x != "STOP" do
  puts "Enter some text."
  ans = gets.chomp
  puts "Enter some more text."
  x = gets.chomp
end

# 3. Use the each_with_index method to iterate through an array

a = ["blue", "red", "green", "yellow", "orange"]

a.each_with_index do |color, index|
	puts "#{index + 1}. #{color}"
end

#4. Countdown using recursion

puts "Enter a number to countdown."
def countdown(number)
	puts number
	if number > 0
		countdown(number - 1)
	end
end

countdown(gets.chomp.to_i)