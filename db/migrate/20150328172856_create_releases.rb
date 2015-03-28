class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.string :catalogNumber
      t.references :artist, index: true
      t.date :releaseDate
      t.text :description
      t.text :tracklist
      t.string :bandcampAlbumId

      t.timestamps null: false
    end
    add_foreign_key :releases, :artists
  end
end
