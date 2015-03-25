class Artist < ActiveRecord::Base
  belongs_to :label, counter_cache: true
  has_many :external_links, as: :linkable
  has_and_belongs_to_many :members

  attachment :image

  validates :name, presence: true
end
