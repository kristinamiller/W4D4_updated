require 'rspec'
require 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    suits = Card.suit_keys
    values = Card.value_keys
    suits.each do |suit|
      values.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end
end