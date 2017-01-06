class Deck < ActiveRecord::Base
  validates :name, :total_cards, :stats, presence: true
  belongs_to :user
end
