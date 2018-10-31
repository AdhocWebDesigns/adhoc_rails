class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.references :user, foreign_key: true
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.timestamps
    end
  end
end
