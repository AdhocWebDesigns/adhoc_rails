class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.references :profile, foreign_key: true
      t.integer :level
      t.integer :cast_time
      t.integer :range
      t.references :components, foreign_key: true
      t.integer :duration
      t.references :spell_school, foreign_key: true
      t.string :attack_save
      t.references :damage_effect, foreign_key: true
      t.string :name
      t.references :dnd_classes, foreign_key: true
      t.text :desc

      t.timestamps
    end
  end
end
