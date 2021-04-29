class CreateAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :level
      t.integer :experience
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
