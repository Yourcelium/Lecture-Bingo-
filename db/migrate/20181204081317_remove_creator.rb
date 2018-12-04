class RemoveCreator < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :creator
    add_column :games, :creator_id, :integer
  end
end
