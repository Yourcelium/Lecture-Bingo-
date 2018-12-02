class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end

    add_index :plays, :user_id
    add_index :plays, :game_id
  end
end
