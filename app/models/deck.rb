class Deck < ActiveRecord::Base
  validates :name, :total_cards, :stats, presence: true
  has_many :user, through: :deck_user, class_name: "User"

end
