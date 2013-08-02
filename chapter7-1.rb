puts "99 bottles of beer song:"
numberOfBottles = 99
while numberOfBottles > 0
	puts numberOfBottles.to_s + " bottles of beer on the wall, " + numberOfBottles.to_s + " bottles of beer."
	puts "Take one down and pass it around, " + numberOfBottles.to_s + " bottles of beer on the wall."
	puts ""
	numberOfBottles = numberOfBottles - 1
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."