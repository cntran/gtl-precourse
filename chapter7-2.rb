puts "Grandma is sitting in the corner, say something to her..."
response = gets.chomp

byeCount = 0
while byeCount < 3

	if (response == "BYE")
		byeCount = byeCount + 1
	else
		byeCount = 0
	end
	
	loudResponse = response.upcase
	if (response != loudResponse)
		puts "HUH?! SPEAK UP, SONNY!"
	else
		randomYear = 1930 + rand(20)
		puts "NO, NOT SINCE " + randomYear.to_s.upcase + "!"
	end

	
	response = gets.chomp
end


