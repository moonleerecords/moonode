require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "should not save member without name" do
    member = Member.new
    assert_not member.save, "Saved the member without a name"
  end
end
