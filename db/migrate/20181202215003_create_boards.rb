class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :game_id
      t.integer :user_id
      t.timestamps
    end

    add_index :boards, :game_id
  end
end
