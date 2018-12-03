class RemoveUserIdFromBoard < ActiveRecord::Migration[5.2]
  def change
    remove_column :boards, :user_id
  end
end
