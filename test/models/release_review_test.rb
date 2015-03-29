require 'test_helper'

class ReleaseReviewTest < ActiveSupport::TestCase
  test "should not save release review without title and url" do
    release_review = ReleaseReview.new
    assert_not release_review.save, "Saved the release review without title and url"
  end
end
