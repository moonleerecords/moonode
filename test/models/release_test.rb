require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
  test "should not save release without title" do
    release = Release.new
    assert_not release.save, "Saved the release without a title"
  end
end
