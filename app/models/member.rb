class Member < ActiveRecord::Base
  belongs_to :artist, counter_cache: true

  validates :name, presence: true
end
