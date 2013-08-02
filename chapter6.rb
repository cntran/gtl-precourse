puts "Tell me something that you want?"
whatIwant = gets.chomp
puts "Why would you want ".upcase + whatIwant.upcase + " !?! You get nothing!!".upcase


lineWidth = 60
puts "Table of Contents".center(lineWidth)
puts "Chapter 1: Getting Started".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
puts "Chapter 2: Numbers".ljust(lineWidth/2) + "page 9".rjust(lineWidth/2)
puts "Chapter 3: Letters".ljust(lineWidth/2) + "page 13".rjust(lineWidth/2)