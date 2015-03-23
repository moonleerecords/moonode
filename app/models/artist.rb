class Artist < ActiveRecord::Base
  belongs_to :Label
  has_many :external_links, as: :linkable

  validates :name, presence: true
end
