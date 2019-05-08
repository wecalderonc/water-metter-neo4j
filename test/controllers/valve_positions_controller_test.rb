require 'test_helper'

class ValvePositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valve_position = valve_positions(:one)
  end

  test "should get index" do
    get valve_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_valve_position_url
    assert_response :success
  end

  test "should create valve_position" do
    assert_difference('ValvePosition.count') do
      post valve_positions_url, params: { valve_position: { uplink_id: @valve_position.uplink_id, value: @valve_position.value } }
    end

    assert_redirected_to valve_position_url(ValvePosition.last)
  end

  test "should show valve_position" do
    get valve_position_url(@valve_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_valve_position_url(@valve_position)
    assert_response :success
  end

  test "should update valve_position" do
    patch valve_position_url(@valve_position), params: { valve_position: { uplink_id: @valve_position.uplink_id, value: @valve_position.value } }
    assert_redirected_to valve_position_url(@valve_position)
  end

  test "should destroy valve_position" do
    assert_difference('ValvePosition.count', -1) do
      delete valve_position_url(@valve_position)
    end

    assert_redirected_to valve_positions_url
  end
end
