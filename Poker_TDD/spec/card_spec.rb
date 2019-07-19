require 'rspec'
require 'card'

describe Card do
  subject(:card) {Card.new(:spades, :king)}


  describe "#initalize" do
    let(:fail_card) {Card.new(:clover, :king)}
    it "raises error if suit is not included in suit hash" do
      # expect {Card.new(:clover, :king)}.to raise_error(ArgumentError)
      # expect fail_card .to include(suit.keys)
      expect {Card.suit_keys}.to include (card.suit)
    end
  end
  
end