require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../hand')
require_relative('../card')

class TestHand < MiniTest::Test

  def setup()
    cards = [
      Card.new("7", "Diamonds"),
      Card.new("King", "Clubs"),
      Card.new("Ace", "Hearts")
    ]
    @hand = Hand.new(cards)
  end

  def test_number_of_cards_in_hand()
    assert_equal(3, @hand.number_of_cards)
  end

  def test_has_card_true()
    assert_equal(true, @hand.has_card("King", "Clubs"))
  end

  def test_has_card_false()
    assert_equal(false, @hand.has_card("Queen", "Clubs"))
  end

  def test_to_s()
    expected = "7 of Diamonds, King of Clubs, Ace of Hearts"
    puts @hand.to_bash_coloured_string
    assert_equal(expected, @hand.to_s)
  end

end
