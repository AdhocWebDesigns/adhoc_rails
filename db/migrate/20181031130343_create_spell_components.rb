class CreateSpellComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_components do |t|
      t.references :spell_component_type, foreign_key: true
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
