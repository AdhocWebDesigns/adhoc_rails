class CreateDndClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :dnd_classes do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
