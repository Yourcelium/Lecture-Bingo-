class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.integer :board_id
      t.integer :square_id
      t.integer :position
      t.timestamps
    end

    add_index :builds, :square_id
    add_index :builds, :board_id
    add_index :builds, [:board_id, :square_id, :position], unique: true
  end
end
