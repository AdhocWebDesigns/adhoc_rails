class CreateSpellSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_schools do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
