class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :label, index: true
      t.text :name
      t.text :description
      t.string :countryCode
      t.string :city
      t.string :genre
      t.integer :formed
      t.boolean :active
      t.boolean :booking
      t.integer :members_count

      t.timestamps null: false
    end
    add_foreign_key :artists, :labels
  end
end
