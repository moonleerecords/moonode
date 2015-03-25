class Member < ActiveRecord::Base
  has_and_belongs_to_many :artists, counter_cache: true

  validates :name, presence: true
end
