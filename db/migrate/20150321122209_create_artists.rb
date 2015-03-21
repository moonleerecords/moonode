class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :Label, index: true
      t.text :name
      t.text :description
      t.string :country
      t.string :city
      t.string :genre
      t.integer :formed
      t.boolean :active
      t.boolean :booking

      t.timestamps null: false
    end
    add_foreign_key :artists, :Labels
  end
end
