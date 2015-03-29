class ReleaseReview < ActiveRecord::Base
  belongs_to :release

  validates :title, :url, presence: true
end
