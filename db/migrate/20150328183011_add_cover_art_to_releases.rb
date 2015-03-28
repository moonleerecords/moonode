class AddCoverArtToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :coverArt_id, :string
  end
end
