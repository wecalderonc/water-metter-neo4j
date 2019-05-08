require "application_system_test_case"

class TimeUplinksTest < ApplicationSystemTestCase
  setup do
    @time_uplink = time_uplinks(:one)
  end

  test "visiting the index" do
    visit time_uplinks_url
    assert_selector "h1", text: "Time Uplinks"
  end

  test "creating a Time uplink" do
    visit time_uplinks_url
    click_on "New Time Uplink"

    fill_in "Uplink", with: @time_uplink.uplink_id
    fill_in "Value", with: @time_uplink.value
    click_on "Create Time uplink"

    assert_text "Time uplink was successfully created"
    click_on "Back"
  end

  test "updating a Time uplink" do
    visit time_uplinks_url
    click_on "Edit", match: :first

    fill_in "Uplink", with: @time_uplink.uplink_id
    fill_in "Value", with: @time_uplink.value
    click_on "Update Time uplink"

    assert_text "Time uplink was successfully updated"
    click_on "Back"
  end

  test "destroying a Time uplink" do
    visit time_uplinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Time uplink was successfully destroyed"
  end
end
