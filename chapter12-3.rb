
birthdates = Hash.new

File.open('birthdates.txt', 'r') do |fh|  
  while line = fh.gets  
    data = line.split(',')
    birthdates[data[0]] = data[1]
  end  
end  

puts 'Who\'s birthday do you want to know about?'
response = gets.chomp
puts birthdates[response]