class Release < ActiveRecord::Base
  belongs_to :artist
  has_many :release_types

  attachment :coverArt

  validates :title, :catalogNumber, :releaseDate, presence: true
end
