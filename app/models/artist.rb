class Artist < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :Label
end
