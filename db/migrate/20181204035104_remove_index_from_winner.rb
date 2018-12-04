class RemoveIndexFromWinner < ActiveRecord::Migration[5.2]
  def change
    remove_index :games, :winner_id
  end
end
