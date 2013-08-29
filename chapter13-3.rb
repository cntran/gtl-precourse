class Dragon

  def initialize(name)
    @name = name
    @hunger_state = 'hungry'
  end

  def feed
    @hunger_state = 'full'
    puts 'Raaarrrrr, that was mighty delicious! Now I won\'t eat you!'
  end

  def walk
    @hunger_state = 'hungry'
    puts 'Raaar, I\'m walking!'
  end

  def talk
    puts @hunger_state
  end

end

puts 'Give your dragon a name: '
name = gets.chomp
baby_dragon = Dragon.new(name)

puts "What do you want to do with your dragon #{name}? 1) feed it 2) walk it"
action = gets.chomp

if action.to_i == 1
  baby_dragon.feed
elsif action.to_i == 2
  baby_dragon.walk
end


