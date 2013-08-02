puts "How many hours are in a year?"
numberOfHoursInDay = 24
numberOfDaysInYear = 365
numberOfHoursInYear = numberOfHoursInDay * numberOfDaysInYear
puts numberOfHoursInYear

puts "How many minutes in a decade?"
numberOfMinutesPerHour = 60
numberOfYearsInDecade = 10
numberOfMinutesInDecade = numberOfMinutesPerHour * numberOfHoursInYear  * numberOfYearsInDecade
puts numberOfMinutesInDecade

puts "What's my age in seconds?"
myAge = 35
numberOfSecondsPerMinute = 60
myAgeInSeconds = numberOfSecondsPerMinute * numberOfMinutesPerHour * numberOfHoursInYear * myAge
puts myAgeInSeconds

puts "What's the author Chris Pine's age?"
chrisPineAgeInSeconds = 1111000000
chrisPineAgeInMinutes = chrisPineAgeInSeconds / 60
chrisPineAgeInHours = chrisPineAgeInMinutes / 60
chrisPineAgeInDays = chrisPineAgeInHours / 24
chrisPineAgeInYears = chrisPineAgeInDays / 365
puts chrisPineAgeInYears