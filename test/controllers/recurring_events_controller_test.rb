require 'test_helper'

class RecurringEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recurring_events_new_url
    assert_response :success
  end

end
