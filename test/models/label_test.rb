require 'test_helper'

class LabelTest < ActiveSupport::TestCase
  test "should not save label without name" do
    label = Label.new
    assert_not label.save, "Saved the label without a name"
  end
end
