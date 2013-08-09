def english_number number

  if number < 0
    return 'Please enter a number greater than zero.'
  end

  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # write out thousands
  left = number
  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # write out hundreds
  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # write out tens
  write = left / 10
  left = left - write * 10

  if write > 0
    if write == 1 and left > 0
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + '-'
    end

  end

  # write out ones
  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  return num_string

end

def beer_song number_bottles

  if number_bottles == 0
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, bottles of beer on the wall."
    return
  end

  
  number_bottles_english = english_number(number_bottles)
  puts number_bottles_english + " bottles of beer on the wall, " + number_bottles_english + " bottles of beer."
  puts "Take one down and pass it around, " + number_bottles_english + " bottles of beer on the wall."
  puts ""
  number_bottles = number_bottles - 1
  beer_song(number_bottles)
  
end

beer_song(1000)