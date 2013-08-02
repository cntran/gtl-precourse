puts "Enter a starting year: "
startingYear = gets.chomp
puts "Enter an ending year: "
endingYear = gets.chomp

puts startingYear
yearCount = startingYear.to_i
while yearCount != endingYear.to_i
	yearCount = yearCount + 1

	if (yearCount % 4) == 0
		if (yearCount % 100) == 0 
			if (yearCount % 400) == 0
				puts yearCount
			end
		else
			puts yearCount
		end
	end
end
puts endingYear