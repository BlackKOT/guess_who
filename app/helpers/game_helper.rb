module GameHelper
  def generate_cards(number = Random.new_seed)
    srand(number)
    cards = {}

    while cards.length < 24
      cards[rand(81)] = true
    end

    cards.keys
  end
end
