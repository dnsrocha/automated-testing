
# deck.rb

require_relative 'card'

class Deck

  def initialize
    valid_value = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    valid_suit = [:hearts, :spades, :clubs, :diamonds]
    @deck = []
    valid_value.each do |value|
      valid_suit.each do |suit|
        card = Card.new(value,suit)
        @deck << card
      end
    end
  end

  def draw
    # returns a card
    return @deck.shift
  end

  def shuffle
    # shuffles the deck
    return @deck.shuffle
  end

  def count
    return @deck.length
  end
end
