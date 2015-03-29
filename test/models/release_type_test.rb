require 'test_helper'

class ReleaseTypeTest < ActiveSupport::TestCase
  test "should not save release type without release and format" do
    release_type = ReleaseType.new
    assert_not release_type.save, "Saved the release type without release and format"
  end
end
