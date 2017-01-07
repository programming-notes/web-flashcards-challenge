class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :decks, through: :deck_user, class_name: "Deck"
  has_many :guesses

end
