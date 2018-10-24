class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.references :user, foreign_key: true
      t.string :published_at
      t.string :page_title
      t.string :heading
      t.string :subheading
      t.text :contents
      t.references :images, foreign_key: true
      t.references :children, foreign_key: true
      t.timestamps
    end
  end
end
