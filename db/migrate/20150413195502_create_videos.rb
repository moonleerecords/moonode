class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :artist, index: true
      t.string :service
      t.string :videoId

      t.timestamps null: false
    end
    add_foreign_key :videos, :artists
  end
end
