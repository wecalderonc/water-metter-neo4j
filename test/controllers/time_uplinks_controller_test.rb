require 'test_helper'

class TimeUplinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_uplink = time_uplinks(:one)
  end

  test "should get index" do
    get time_uplinks_url
    assert_response :success
  end

  test "should get new" do
    get new_time_uplink_url
    assert_response :success
  end

  test "should create time_uplink" do
    assert_difference('TimeUplink.count') do
      post time_uplinks_url, params: { time_uplink: { uplink_id: @time_uplink.uplink_id, value: @time_uplink.value } }
    end

    assert_redirected_to time_uplink_url(TimeUplink.last)
  end

  test "should show time_uplink" do
    get time_uplink_url(@time_uplink)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_uplink_url(@time_uplink)
    assert_response :success
  end

  test "should update time_uplink" do
    patch time_uplink_url(@time_uplink), params: { time_uplink: { uplink_id: @time_uplink.uplink_id, value: @time_uplink.value } }
    assert_redirected_to time_uplink_url(@time_uplink)
  end

  test "should destroy time_uplink" do
    assert_difference('TimeUplink.count', -1) do
      delete time_uplink_url(@time_uplink)
    end

    assert_redirected_to time_uplinks_url
  end
end
