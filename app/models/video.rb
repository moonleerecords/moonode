class Video < ActiveRecord::Base
  belongs_to :artist

  validates :type, :videoId, presence: true
end
