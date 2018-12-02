class CreateSquares < ActiveRecord::Migration[5.2]
  def change
    create_table :squares do |t|
      t.integer :theme_id
      t.string :text
      t.timestamps
    end

    add_index :squares, :theme_id
  end
end
