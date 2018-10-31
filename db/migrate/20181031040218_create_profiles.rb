class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.integer :class
      t.text :background
      t.integer :dci
      t.integer :exp
      t.references :alignment, foreign_key: true
      t.references :race, foreign_key: true
      t.string :char_name
      t.integer :inspire
      t.integer :prof_bonus
      t.integer :ac
      t.integer :init
      t.integer :speed
      t.integer :hp
      t.integer :temp_hp
      t.integer :hit_die
      t.integer :deathsave_s
      t.integer :deathsave_f
      t.references :skills, foreign_key: true
      t.references :stats, foreign_key: true
      t.text :personality
      t.text :ideals
      t.text :bonds
      t.text :flaws
      t.references :faction, foreign_key: true
      t.references :spells, foreign_key: true
      t.references :attacks, foreign_key: true
      t.references :inventory, foreign_key: true
      t.text :profs
      t.references :langs, foreign_key: true
      t.text :features
      t.text :traits
      t.integer :age
      t.integer :height
      t.integer :weight
      t.string :eyes
      t.string :skin
      t.string :hair
      t.text :backstory
      t.integer :total_ncm
      t.references :treasure, foreign_key: true
      t.integer :pass_wisdom

      t.timestamps
    end
  end
end
