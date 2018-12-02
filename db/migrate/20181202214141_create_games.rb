class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :theme_id
      t.integer :winner_id
      t.timestamps
    end

    add_index :games, :theme_id
    add_index :games, :winner_id
  end
end
