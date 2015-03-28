class Release < ActiveRecord::Base
  belongs_to :artist

  attachment :coverArt

  validates :title, :catalogNumber, :releaseDate, presence: true
end
