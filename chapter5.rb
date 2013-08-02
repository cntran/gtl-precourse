puts 'What is your first name?'
firstName = gets.chomp
puts 'What is your middle name?'
middleName = gets.chomp
puts 'What is your last name?'
lastName = gets.chomp
fullName = firstName + ' ' + middleName + ' ' + lastName
puts 'Nice to meet you ' + fullName + '.'


puts "What is your favorite number " + fullName + "?"
favoriteNumber = gets.chomp
betterNumber = favoriteNumber.to_i + 1
puts favoriteNumber.to_s + " is a good number but " + betterNumber.to_s + " is just a bit better!"