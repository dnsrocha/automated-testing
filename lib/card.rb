
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    if value < 1 || value > 13
      raise ArgumentError.new("Invalid card")
    end

    valid_card = [:hearts, :spades, :clubs, :diamonds]
    unless valid_card.include?(suit)
      raise ArgumentError.new("Suit must be Hearts, Spades, Clubs or Diamonds")
    end
  end

  def to_special_value
    if @value == 1
      return "Ace"
    elsif @value == 11
      return "Jack"
    elsif @value == 12
      return "Queen"
    elsif @value == 13
      return "King"
    end
  end

  def to_s
    if [1,11,12,13].include?(value)
      return "#{self.to_special_value} of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end

end
