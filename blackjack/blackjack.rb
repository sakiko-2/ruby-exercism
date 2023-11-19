module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'two' then 2
    when 'three' then 3
    when 'four' then 4
    when 'five' then 5
    when 'six' then 6
    when 'seven' then 7
    when 'eight' then 8
    when 'nine' then 9
    when 'ten', 'jack', 'queen', 'king' then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    
    case score
    when 0..11
      'low'
    when 12..16
      'mid'
    when 17..20
      'high'
    when 21
      'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    if card1 == 'ace' && card2 == 'ace'
      return 'P'
    end

    case card_range(card1, card2)
    when 'blackjack'
      parse_card(dealer_card) < 10 ? 'W': 'S'
    when 'high'
      'S'
    when 'mid'
      parse_card(dealer_card) < 7 ? 'S' : 'H'
    when 'low'
      'H'
    end
  end
end
