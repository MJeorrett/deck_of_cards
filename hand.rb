class Hand

  def initialize(cards)
    @cards = cards
  end

  def number_of_cards()
    return @cards.length
  end

  def has_card(value, suit)
    has_card = false

    for card in @cards
      value_matches = card.value == value
      suit_matches = card.suit == suit
      has_card = true if value_matches && suit_matches
    end

    return has_card
  end

  def to_s()
    return @cards.join(", ")
  end

  def to_bash_coloured_string()
    return @cards.map { |card|
      card.to_bash_coloured_string
    }.join("\n\n")
  end

end
