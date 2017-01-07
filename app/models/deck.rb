class Deck < ActiveRecord::Base
  validates :name, :total_cards, :stats, presence: true

  has_many :rounds, class_name: "Round"
  has_many :users, through: :rounds
  has_many :cards, class_name: "Card"

end
