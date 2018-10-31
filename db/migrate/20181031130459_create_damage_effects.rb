class CreateDamageEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :damage_effects do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
