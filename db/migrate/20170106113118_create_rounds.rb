class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references(:user)
      t.belongs_to(:user, foreign_key: true)
      t.references(:deck)
      t.belongs_to(:deck, foreign_key: true)

      t.timestamps
    end

  end
end
