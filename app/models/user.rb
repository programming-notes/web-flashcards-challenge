class User < ActiveRecord::Base
  has_many :rounds, class_name: "Round"
  has_many :decks, through: :rounds
  has_many :cards, through: :decks
  has_many :guesses, through: :cards

  has_secure_password

  def self.get_question
    User.find_by(username: @username).cards[@num_card].question
  end

  def self.get_answer
    User.find_by(username: @username).cards[@num_card].answer
  end

end
