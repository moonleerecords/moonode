class Event < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  validates :artist, :venue, :start, presence: true
end
