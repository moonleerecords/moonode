class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.string :catalogNumber
      t.date :releaseDate
      t.text :description
      t.text :tracklist
      t.string :bandcampAlbumId

      t.timestamps null: false
    end
  end
end
