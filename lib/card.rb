
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    if value < 1 || value > 13
      raise ArgumentError.new("Value must be between 1 and 13")
    end

    valid = [:hearts, :spades, :clubs, :diamonds]
    unless valid.include?(suit)
      raise ArgumentError.new("Suit must be Hearts, Spades, Clubs or Diamonds")
    end
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end



end
