tableOfContents = [["Chapter 1: Getting Started", "page 1"], ["Chapter 3: Numbers", "page 9"], ["Chapter 3: Letters", "page 13"]]

lineWidth = 60
puts "Table of Contents".center(lineWidth)

tableOfContents.each do |chapters|
	puts chapters[0].ljust(lineWidth/2) + chapters[1].rjust(lineWidth/2)
end