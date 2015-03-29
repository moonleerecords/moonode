class Release < ActiveRecord::Base
  belongs_to :artist
  has_many :release_types
  has_many :release_reviews

  attachment :coverArt

  validates :title, :catalogNumber, :releaseDate, presence: true
end
