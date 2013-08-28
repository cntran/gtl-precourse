def roman_to_integer roman

  symbols = { :I => 1, :V => 5, :X => 10, :L => 50, :C => 100, :D => 500, :M => 1000 }


  total_value = 0
  previous_value = 0

  index = roman.length - 1
  while index >= 0

    character = roman[index].upcase.to_sym
    index -= 1

    if !symbols[character]
      puts "Invalid Roman Numeral"
      return
    end

    character_value = symbols[character]
   
    if character_value < previous_value
      character_value = character_value * -1
    else
      previous_value = character_value
    end

    total_value += character_value
  end

  total_value

end

roman = gets.chomp
puts roman_to_integer( roman )