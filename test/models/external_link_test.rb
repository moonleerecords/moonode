require 'test_helper'

class ExternalLinkTest < ActiveSupport::TestCase
  test "should not save external link an url" do
    externallink = ExternalLink.new
    assert_not externallink.save, "Saved the external link an url"
  end
end
