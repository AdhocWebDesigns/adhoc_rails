class CreateArmours < ActiveRecord::Migration[5.2]
  def change
    create_table :armours do |t|
      t.references :profile, foreign_key: true
      t.string :name
      t.string :description
      t.integer :ac
      t.integer :strength
      t.integer :stealth
      t.integer :weight
      t.integer :value

      t.timestamps
    end
  end
end
