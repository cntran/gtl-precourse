
puts "Enter some words and I will return them back in alphabetical order. Enter empty string to end."
array = []

response = gets.chomp
while response != ""
	array.push response.to_s
	response = gets.chomp
end

puts array.sort