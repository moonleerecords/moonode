require 'test_helper'

class ArtistMemberTest < ActiveSupport::TestCase
  test "should not save artist member without a artist or member" do
    artistmember = ArtistMember.new
    assert_not artistmember.save, "Saved the artist member without a artist or member"
  end
end
