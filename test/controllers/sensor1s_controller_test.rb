require 'test_helper'

class Sensor1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor1 = sensor1s(:one)
  end

  test "should get index" do
    get sensor1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor1_url
    assert_response :success
  end

  test "should create sensor1" do
    assert_difference('Sensor1.count') do
      post sensor1s_url, params: { sensor1: { uplink_id: @sensor1.uplink_id, value: @sensor1.value } }
    end

    assert_redirected_to sensor1_url(Sensor1.last)
  end

  test "should show sensor1" do
    get sensor1_url(@sensor1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor1_url(@sensor1)
    assert_response :success
  end

  test "should update sensor1" do
    patch sensor1_url(@sensor1), params: { sensor1: { uplink_id: @sensor1.uplink_id, value: @sensor1.value } }
    assert_redirected_to sensor1_url(@sensor1)
  end

  test "should destroy sensor1" do
    assert_difference('Sensor1.count', -1) do
      delete sensor1_url(@sensor1)
    end

    assert_redirected_to sensor1s_url
  end
end
