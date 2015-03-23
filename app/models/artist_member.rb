class ArtistMember < ActiveRecord::Base
  belongs_to :Artist
  belongs_to :Member

  validates :artist, :presence => true
  validates :member, :presence => true
end
