require "application_system_test_case"

class ValvePositionsTest < ApplicationSystemTestCase
  setup do
    @valve_position = valve_positions(:one)
  end

  test "visiting the index" do
    visit valve_positions_url
    assert_selector "h1", text: "Valve Positions"
  end

  test "creating a Valve position" do
    visit valve_positions_url
    click_on "New Valve Position"

    fill_in "Uplink", with: @valve_position.uplink_id
    fill_in "Value", with: @valve_position.value
    click_on "Create Valve position"

    assert_text "Valve position was successfully created"
    click_on "Back"
  end

  test "updating a Valve position" do
    visit valve_positions_url
    click_on "Edit", match: :first

    fill_in "Uplink", with: @valve_position.uplink_id
    fill_in "Value", with: @valve_position.value
    click_on "Update Valve position"

    assert_text "Valve position was successfully updated"
    click_on "Back"
  end

  test "destroying a Valve position" do
    visit valve_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Valve position was successfully destroyed"
  end
end
