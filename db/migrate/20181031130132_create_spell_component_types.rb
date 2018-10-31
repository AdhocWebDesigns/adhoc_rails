class CreateSpellComponentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_component_types do |t|
      t.string :name
      t.string :symbol
      t.text :desc

      t.timestamps
    end
  end
end
