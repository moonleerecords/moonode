require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "should not save artist without name" do
    artist = Artist.new
    assert_not artist.save, "Saved the artist without a name"
  end
end
