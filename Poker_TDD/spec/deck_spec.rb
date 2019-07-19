require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) {Deck.new}
  it 'should be initialized with deck containing 52 cards' do
    expect(deck.cards.length).to eq(52)
  end
end