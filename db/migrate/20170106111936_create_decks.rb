class CreateDecks < ActiveRecord::Migration
  def change
    create_table   :decks do |t|
      t.string     :name, null: false
      t.integer    :total_cards, null:false
      t.string     :stats, null:false
      t.references :user, null:false

      t.timestamps(null: false)
    end
  end
end
