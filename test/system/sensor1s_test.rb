require "application_system_test_case"

class Sensor1sTest < ApplicationSystemTestCase
  setup do
    @sensor1 = sensor1s(:one)
  end

  test "visiting the index" do
    visit sensor1s_url
    assert_selector "h1", text: "Sensor1s"
  end

  test "creating a Sensor1" do
    visit sensor1s_url
    click_on "New Sensor1"

    fill_in "Uplink", with: @sensor1.uplink_id
    fill_in "Value", with: @sensor1.value
    click_on "Create Sensor1"

    assert_text "Sensor1 was successfully created"
    click_on "Back"
  end

  test "updating a Sensor1" do
    visit sensor1s_url
    click_on "Edit", match: :first

    fill_in "Uplink", with: @sensor1.uplink_id
    fill_in "Value", with: @sensor1.value
    click_on "Update Sensor1"

    assert_text "Sensor1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sensor1" do
    visit sensor1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sensor1 was successfully destroyed"
  end
end
