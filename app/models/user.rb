class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds, class_name: "Round"
  has_many :decks, through: :rounds
  has_many :guesses

end
