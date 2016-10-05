require_relative('string__colorize')

class Card

  SUIT_DATA = {
    'Hearts' => {
      colour: 91,
      symbol: '♥'
    },
    'Clubs' => {
      colour: 30,
      symbol: '♣'
    },
    'Diamonds' => {
      colour: 91,
      symbol: '♦'
    },
    'Spades' => {
      colour: 30,
      symbol: '♠'
    }
  }

  BACKGROUND_COLOUR = 107

  attr_reader(:value, :suit)

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_bash_coloured_string()
    suit_colour = SUIT_DATA[@suit][:colour]
    suit_symbol = SUIT_DATA[@suit][:symbol]
    return @value.colorize(suit_colour, BACKGROUND_COLOUR, true) + " ".colorize(30, BACKGROUND_COLOUR) + suit_symbol.colorize(suit_colour, BACKGROUND_COLOUR, true)
  end

  def to_s()
    @value + " of " + @suit
  end
end
