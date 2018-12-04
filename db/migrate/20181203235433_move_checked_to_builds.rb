class MoveCheckedToBuilds < ActiveRecord::Migration[5.2]
  def change
    remove_column :squares, :checked
    add_column :builds, :checked, :boolean, default: false
  end
end
