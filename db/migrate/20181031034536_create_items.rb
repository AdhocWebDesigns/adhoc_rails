class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :qty
      t.string :description
      t.integer :value_sp
      t.integer :weight

      t.timestamps
    end
  end
end
