class Venue < ActiveRecord::Base
  validates :name, :city, :countryCode, presence: true
end
