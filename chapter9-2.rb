def old_roman_numeral number

	numM = number / 1000
	numD = (number - (numM * 1000)) / 500
	numC = (number - (numM * 1000) - (numD * 500)) / 100
	numL = (number - (numM * 1000) - (numD * 500) - (numC * 100)) / 50
	numX = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50)) / 10
	numV = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50) - (numX * 10)) / 5
	numI = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50) - (numX * 10) - (numV * 5)) / 1

	puts 'M' * numM + 'D' * numD + 'C' * numC + 'L' * numL + 'X' * numX + 'V' * numV + 'I' * numI

end

def roman_numeral number
	numberString = number.to_s
	lastDigit = numberString[numberString.length - 1, 1]
	digit = lastDigit.to_i

	numM = number / 1000
	numD = (number - (numM * 1000)) / 500
	numC = (number - (numM * 1000) - (numD * 500)) / 100
	numL = (number - (numM * 1000) - (numD * 500) - (numC * 100)) / 50
	numX = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50)) / 10
	numV = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50) - (numX * 10)) / 5
	numI = (number - (numM * 1000) - (numD * 500) - (numC * 100) - (numL * 50) - (numX * 10) - (numV * 5)) / 1

	romanDigit = 'M' * numM + 'D' * numD + 'C' * numC + 'L' * numL + 'X' * numX
	if ( digit == 4 )
		romanDigit = romanDigit + 'IV'
		return romanDigit
	elsif ( digit == 9 )
		romanDigit = romanDigit + 'IX'
	else
		romanDigit = romanDigit + 'V' * numV + 'I' * numI
	end

	puts romanDigit
end

puts "Enter a number to convert to roman numeral: "
reply = gets.chomp
puts "old roman numeral conversion: ".chomp
puts old_roman_numeral reply.to_i
puts "modern roman numeral conversion: ".chomp
puts roman_numeral reply.to_i
