class Artist < ActiveRecord::Base
  belongs_to :label, counter_cache: true
  has_many :external_links, as: :linkable
  has_many :artist_members
  has_many :members, through: :artist_members

  attachment :image

  validates :name, presence: true
end
