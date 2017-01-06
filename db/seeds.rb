def fake_username
"#{Faker::Internet.user_name}"
end

def fake_deckname
  "#{Faker::Space.planet}"
end

def fake_number
  "#{Faker::Number.number(2)}"
end

# Remove any cards from the database
Card.delete_all

User.delete_all

Deck.delete_all

Round.delete_all

Guess.delete_all

# Create 5 users

  user = User.create(name: fake_username)

  deck = Deck.create!({
    :name         => fake_deckname,
    :total_cards  => 1,#Card.count.where(deck_id: d),
    :stats        => "some percentage",
    :user_id      => user.id
  })

  round = Round.create(user_id: user.id, deck_id: deck.id)

  card = Card.create!({
    :deck_id => deck.id,
    :questions => "this is the question?",
    :answers => "this is the answer."
  })

  guess = Guess.create!({
    :first_time_count => fake_number,
    :total_guess => fake_number,
    :card_id => card.id,
    :user_id => user.id
  })
