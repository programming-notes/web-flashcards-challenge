
# Remove any cards from the database

Card.delete_all

User.delete_all

Deck.delete_all

Round.delete_all

Guess.delete_all

# Create 5 users

  user = User.create(
    full_name: "Bob Bobbins",
    username: "abc",
    email:    "111@111.com",
    password: 'password'
  )
    deck1 = Deck.create!({
      :name      => "Otters",
      :total_cards  => 6,
      :stats        => "null",
      :user_id      => user.id
    })

    deck2 = Deck.create!({
      :name      => "Raccoons",
      :total_cards  => 6,
      :stats        => "null",
      :user_id      => user.id
    })

    deck3 = Deck.create!({
      :name      => "Nighthawks",
      :total_cards  => 6,
      :stats        => "null",
      :user_id      => user.id
    })

    card1 = Card.create!({
      :deck_id => deck1.id,
      :question => "What is an otter's primary food source?",
      :answer => "fish"
    })

      card2 = Card.create!({
      :deck_id => deck1.id,
      :question => "True or false? Otters spend the majority of their time on land.",
      :answer => "true"
    })
      card3 = Card.create!({
      :deck_id => deck1.id,
      :question => "How many species of otters are there?",
      :answer => "13"
    })

      card4 = Card.create!({
      :deck_id => deck1.id,
      :question => "True of false? Otters are native to Australia.",
      :answer => "false"
    })

      card5 = Card.create!({
      :deck_id => deck1.id,
      :question => "True or false? Otters make and use tools.",
      :answer => "true"
    })

      card6 = Card.create!({
      :deck_id => deck1.id,
      :question => "In years, what is the average life span of an otter in the wild?",
      :answer => "10"
    })

      card7 = Card.create!({
      :deck_id => deck2.id,
      :question => "What is a male raccoon called?",
      :answer => "boar"
    })

      card8 = Card.create!({
      :deck_id => deck2.id,
      :question => "What is a female raccoon called?",
      :answer => "sow"
    })

      card9 = Card.create!({
      :deck_id => deck2.id,
      :question => "Are raccoons herbivorous, carnivorous, or omnivorous?",
      :answer => "omnivorous"
    })

      card10 = Card.create!({
      :deck_id => deck2.id,
      :question => "True or false?  Raccoons are nocturnal.",
      :answer => "true"
    })

      card11 = Card.create!({
      :deck_id => deck2.id,
      :question => "True or false?  Raccoons hibernate.",
      :answer => "false"
    })

      card12 = Card.create!({
      :deck_id => deck2.id,
      :question => "True or false?  Raccoons can run at speeds up to 15 miles per hour.",
      :answer => "true"
    })

      card13 = Card.create!({
      :deck_id => deck3.id,
      :question => "What is a nighthawk's primary food source?",
      :answer => "insects"
    })

      card14 = Card.create!({
      :deck_id => deck3.id,
      :question => "True or false?  Nighthawks are closely related to hawks.",
      :answer => "false"
    })

      card15 = Card.create!({
      :deck_id => deck3.id,
      :question => "True or false?  Nighthawks make nests.",
      :answer => "false"
    })

      card16 = Card.create!({
      :deck_id => deck3.id,
      :question => "Where do Common Nighthawks spend the winter?",
      :answer => "South America"
    })

      card17 = Card.create!({
      :deck_id => deck3.id,
      :question => "True or false?  Bullbat is another name for the Common Nighthawk.",
      :answer => "true"
    })

      card18 = Card.create!({
      :deck_id => deck3.id,
      :question => "What's a nighthawk's favorite color?",
      :answer => "Periwinkle"
    })

    guess1 = Guess.create!({
      :first_time_count => false,
      :card_id => card1.id,
      :user_id => user.id
    })

    guess2 = Guess.create!({
      :first_time_count => false,
      :card_id => card2.id,
      :user_id => user.id
    })

    guess3 = Guess.create!({
      :first_time_count => false,
      :card_id => card3.id,
      :user_id => user.id
    })

    guess4 = Guess.create!({
      :first_time_count => false,
      :card_id => card4.id,
      :user_id => user.id
    })

    guess5 = Guess.create!({
      :first_time_count => false,
      :card_id => card5.id,
      :user_id => user.id
    })

    guess6 = Guess.create!({
      :first_time_count => false,
      :card_id => card6.id,
      :user_id => user.id
    })

    guess7 = Guess.create!({
      :first_time_count => false,
      :card_id => card7.id,
      :user_id => user.id
    })

    guess8 = Guess.create!({
      :first_time_count => false,
      :card_id => card8.id,
      :user_id => user.id
    })

    guess9 = Guess.create!({
      :first_time_count => false,
      :card_id => card9.id,
      :user_id => user.id
    })

    guess10 = Guess.create!({
      :first_time_count => false,
      :card_id => card10.id,
      :user_id => user.id
    })

    guess11 = Guess.create!({
      :first_time_count => false,
      :card_id => card11.id,
      :user_id => user.id
    })

    guess12 = Guess.create!({
      :first_time_count => false,
      :card_id => card12.id,
      :user_id => user.id
    })

    guess13 = Guess.create!({
      :first_time_count => false,
      :card_id => card13.id,
      :user_id => user.id
    })

    guess14 = Guess.create!({
      :first_time_count => false,
      :card_id => card14.id,
      :user_id => user.id
    })


    guess15 = Guess.create!({
      :first_time_count => false,
      :card_id => card15.id,
      :user_id => user.id
    })

      guess16 = Guess.create!({
      :first_time_count => false,
      :card_id => card16.id,
      :user_id => user.id
    })

      guess17 = Guess.create!({
      :first_time_count => false,
      :card_id => card17.id,
      :user_id => user.id
    })

      guess18 = Guess.create!({
      :first_time_count => false,
      :card_id => card18.id,
      :user_id => user.id
    })

    round1 = Round.create(
      user_id: user.id,
      deck_id: deck1.id
    )

    round2 = Round.create(
      user_id: user.id,
      deck_id: deck1.id
    )

