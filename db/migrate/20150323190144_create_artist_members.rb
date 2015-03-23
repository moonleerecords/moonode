class CreateArtistMembers < ActiveRecord::Migration
  def change
    create_table :artist_members do |t|
      t.references :Artist, index: true
      t.references :Member, index: true
      t.string :role

      t.timestamps null: false
    end
    add_foreign_key :artist_members, :Artists
    add_foreign_key :artist_members, :Members
  end
end
