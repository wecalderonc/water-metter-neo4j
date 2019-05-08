require "application_system_test_case"

class UplinkBDownlinksTest < ApplicationSystemTestCase
  setup do
    @uplink_b_downlink = uplink_b_downlinks(:one)
  end

  test "visiting the index" do
    visit uplink_b_downlinks_url
    assert_selector "h1", text: "Uplink B Downlinks"
  end

  test "creating a Uplink b downlink" do
    visit uplink_b_downlinks_url
    click_on "New Uplink B Downlink"

    fill_in "Uplink", with: @uplink_b_downlink.uplink_id
    fill_in "Value", with: @uplink_b_downlink.value
    click_on "Create Uplink b downlink"

    assert_text "Uplink b downlink was successfully created"
    click_on "Back"
  end

  test "updating a Uplink b downlink" do
    visit uplink_b_downlinks_url
    click_on "Edit", match: :first

    fill_in "Uplink", with: @uplink_b_downlink.uplink_id
    fill_in "Value", with: @uplink_b_downlink.value
    click_on "Update Uplink b downlink"

    assert_text "Uplink b downlink was successfully updated"
    click_on "Back"
  end

  test "destroying a Uplink b downlink" do
    visit uplink_b_downlinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uplink b downlink was successfully destroyed"
  end
end
