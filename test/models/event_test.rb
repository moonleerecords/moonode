require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should not save event without artist, venue or start time" do
    event = Event.new
    assert_not event.save, "Saved the event without artist, venue or start time"
  end
end
