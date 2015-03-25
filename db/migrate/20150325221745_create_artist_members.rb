class CreateArtistMembers < ActiveRecord::Migration
  def change
    create_table :artist_members do |t|
      t.references :artist, index: true
      t.references :member, index: true
      t.string :role

      t.timestamps null: false
    end
    add_foreign_key :artist_members, :artists
    add_foreign_key :artist_members, :members
  end
end
