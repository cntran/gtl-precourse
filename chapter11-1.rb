Dir.chdir '/Users/cntran/Documents/images/renamed'

pic_names = Dir['/Users/cntran/Documents/images/*.{PNG,png}']
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|

  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.png"
  else
    "#{batch_name}#{pic_number}.png"
  end

  # add test to ensure file is not overwritten
  if !File.exist?new_name
    File.rename name, new_name
  end

  pic_number = pic_number + 1

end

puts
puts "Done."