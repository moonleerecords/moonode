class Label < ActiveRecord::Base
  belongs_to :user
  has_many :external_links, as: :linkable

  validates :name, presence: true
end
