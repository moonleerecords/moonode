class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :artist, index: true
      t.references :venue, index: true
      t.datetime :start
      t.datetime :end
      t.string :price
      t.string :ticketUrl
      t.string :songkickUrl
      t.string :facebookUrl
      t.string :lastfmUrl

      t.timestamps null: false
    end
    add_foreign_key :events, :artists
    add_foreign_key :events, :venues
  end
end
