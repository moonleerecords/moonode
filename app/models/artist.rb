class Artist < ActiveRecord::Base
  belongs_to :label, counter_cache: true
  has_many :external_links, as: :linkable
  has_many :artist_members
  has_many :members, through: :artist_members
  has_many :releases
  has_many :events
  has_many :videos

  attachment :image # TODO: more images with table in between

  validates :name, presence: true
end
