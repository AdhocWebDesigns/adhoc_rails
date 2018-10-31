class CreateTreasures < ActiveRecord::Migration[5.2]
  def change
    create_table :treasures do |t|
      t.references :profile, foreign_key: true
      t.references :items, foreign_key: true

      t.timestamps
    end
  end
end
