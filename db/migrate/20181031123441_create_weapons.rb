class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :w_type
      t.string :name
      t.string :description
      t.integer :damage
      t.references :damage_type, foreign_key: true
      t.integer :weight
      t.integer :value
      t.references :weapon_props, foreign_key: true

      t.timestamps
    end
  end
end
