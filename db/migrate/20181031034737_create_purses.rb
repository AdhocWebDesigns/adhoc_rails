class CreatePurses < ActiveRecord::Migration[5.2]
  def change
    create_table :purses do |t|
      t.references :profile, foreign_key: true
      t.integer :cp
      t.integer :sp
      t.integer :ep
      t.integer :gp
      t.integer :pp

      t.timestamps
    end
  end
end
