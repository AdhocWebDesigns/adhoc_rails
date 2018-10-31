class CreateAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :alignments do |t|
      t.integer :val
      t.string :name
      t.string :descr

      t.timestamps
    end
  end
end
