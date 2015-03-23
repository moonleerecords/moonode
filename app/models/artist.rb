class Artist < ActiveRecord::Base
  belongs_to :Label

  validates :name, presence: true

end
