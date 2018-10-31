class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :profile, foreign_key: true
      t.references :purse, foreign_key: true
      t.references :items, foreign_key: true
      t.references :weapons, foreign_key: true
      t.references :armours, foreign_key: true
      t.references :treasure, foreign_key: true

      t.timestamps
    end
  end
end
