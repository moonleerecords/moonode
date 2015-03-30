require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  test "should not save venue without name, city or countryCode" do
    venue = Venue.new
    assert_not venue.save, "Saved the venue without name, city or countryCode"
  end
end
