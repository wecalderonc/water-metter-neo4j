require 'test_helper'

class UplinkBDownlinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uplink_b_downlink = uplink_b_downlinks(:one)
  end

  test "should get index" do
    get uplink_b_downlinks_url
    assert_response :success
  end

  test "should get new" do
    get new_uplink_b_downlink_url
    assert_response :success
  end

  test "should create uplink_b_downlink" do
    assert_difference('UplinkBDownlink.count') do
      post uplink_b_downlinks_url, params: { uplink_b_downlink: { uplink_id: @uplink_b_downlink.uplink_id, value: @uplink_b_downlink.value } }
    end

    assert_redirected_to uplink_b_downlink_url(UplinkBDownlink.last)
  end

  test "should show uplink_b_downlink" do
    get uplink_b_downlink_url(@uplink_b_downlink)
    assert_response :success
  end

  test "should get edit" do
    get edit_uplink_b_downlink_url(@uplink_b_downlink)
    assert_response :success
  end

  test "should update uplink_b_downlink" do
    patch uplink_b_downlink_url(@uplink_b_downlink), params: { uplink_b_downlink: { uplink_id: @uplink_b_downlink.uplink_id, value: @uplink_b_downlink.value } }
    assert_redirected_to uplink_b_downlink_url(@uplink_b_downlink)
  end

  test "should destroy uplink_b_downlink" do
    assert_difference('UplinkBDownlink.count', -1) do
      delete uplink_b_downlink_url(@uplink_b_downlink)
    end

    assert_redirected_to uplink_b_downlinks_url
  end
end
