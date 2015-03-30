class Venue < ActiveRecord::Base
  has_many :events

  validates :name, :city, :countryCode, presence: true
end
