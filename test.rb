class Card

def initialize(suit, value)
@suit = suit
@value = value
end

def suit
@suit
end

def to_s
  puts @suit
  puts @value
end

end

c1 = Card.new('H', '3')

puts c1