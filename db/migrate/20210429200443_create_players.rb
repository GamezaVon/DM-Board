class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :character_name
      t.integer :level
      t.integer :experience
      t.string :race
      t.string :character_class
      t.string :background
      t.string :alignment
      t.string :player_name

      t.timestamps
    end
  end
end
