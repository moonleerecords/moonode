require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test "should not save video without service or videoId" do
    video = Video.new
    assert_not video.save, "Saved the video without service or videoId"
  end
end
