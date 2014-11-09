# 1. Select only immediate family members from the hash
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

puts family.select { |k,v| (k == :sisters) || (k == :brothers) }

# 2. Using the two merge methods
hat = {type: "top"}
size = {size: "large"}
puts hat.merge(size)
puts hat
puts hat.merge!(size)
puts hat

# 3. Loop through hash and print the keys
brands = {car: "Toyota", laptop: "Sony", phone: "Apple"}
brands.each_key { |key| puts key }
brands.each_value { |value| puts value }
brands.each { |key, value| puts "The brand of #{key} is #{value}."}

# 5. Method to find a specific value in a hash
if brands.has_value?("Toyota")
	puts "The value is here."
else 
	puts "The value is not here."
end

# 6. Print out words in the hash that are anagrams
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagrams = {}

words.each do |words|
	  key = words.split('').sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(words)
  else
    anagrams[key] = [words]
  end
end

anagrams.each do |k, v|
  puts " "
  p v
end
