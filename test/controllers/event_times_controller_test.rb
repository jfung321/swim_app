require 'test_helper'

class EventTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_time = event_times(:one)
  end

  test "should get index" do
    get event_times_url
    assert_response :success
  end

  test "should get new" do
    get new_event_time_url
    assert_response :success
  end

  test "should create event_time" do
    assert_difference('EventTime.count') do
      post event_times_url, params: { event_time: { event_id: @event_time.event_id, time: @event_time.time, user_id: @event_time.user_id } }
    end

    assert_redirected_to event_time_url(EventTime.last)
  end

  test "should show event_time" do
    get event_time_url(@event_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_time_url(@event_time)
    assert_response :success
  end

  test "should update event_time" do
    patch event_time_url(@event_time), params: { event_time: { event_id: @event_time.event_id, time: @event_time.time, user_id: @event_time.user_id } }
    assert_redirected_to event_time_url(@event_time)
  end

  test "should destroy event_time" do
    assert_difference('EventTime.count', -1) do
      delete event_time_url(@event_time)
    end

    assert_redirected_to event_times_url
  end
end
