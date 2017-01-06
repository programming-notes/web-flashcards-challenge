class Card < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :decks
  has_many :guesses
end
