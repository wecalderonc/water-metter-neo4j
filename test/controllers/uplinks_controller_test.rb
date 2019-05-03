require 'test_helper'

class UplinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uplink = uplinks(:one)
  end

  test "should get index" do
    get uplinks_url
    assert_response :success
  end

  test "should get new" do
    get new_uplink_url
    assert_response :success
  end

  test "should create uplink" do
    assert_difference('Uplink.count') do
      post uplinks_url, params: { uplink: { avgsnr: @uplink.avgsnr, data: @uplink.data, lat: @uplink.lat, long: @uplink.long, rssi: @uplink.rssi, snr: @uplink.snr, thing_id: @uplink.thing_id } }
    end

    assert_redirected_to uplink_url(Uplink.last)
  end

  test "should show uplink" do
    get uplink_url(@uplink)
    assert_response :success
  end

  test "should get edit" do
    get edit_uplink_url(@uplink)
    assert_response :success
  end

  test "should update uplink" do
    patch uplink_url(@uplink), params: { uplink: { avgsnr: @uplink.avgsnr, data: @uplink.data, lat: @uplink.lat, long: @uplink.long, rssi: @uplink.rssi, snr: @uplink.snr, thing_id: @uplink.thing_id } }
    assert_redirected_to uplink_url(@uplink)
  end

  test "should destroy uplink" do
    assert_difference('Uplink.count', -1) do
      delete uplink_url(@uplink)
    end

    assert_redirected_to uplinks_url
  end
end
