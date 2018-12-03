class AddMarkedToSquare < ActiveRecord::Migration[5.2]
  def change
    add_column :squares, :checked, :boolean, :default => false
  end
end
