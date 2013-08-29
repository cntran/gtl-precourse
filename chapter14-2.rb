def grandfather_clock hour, &block

  count = 0
  while count < hour
    block.call
    count += 1
  end

end

currentHour = Time.new.hour

grandfather_clock currentHour do
  
  puts 'Ding Dong!'

end