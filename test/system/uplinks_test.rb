require "application_system_test_case"

class UplinksTest < ApplicationSystemTestCase
  setup do
    @uplink = uplinks(:one)
  end

  test "visiting the index" do
    visit uplinks_url
    assert_selector "h1", text: "Uplinks"
  end

  test "creating a Uplink" do
    visit uplinks_url
    click_on "New Uplink"

    fill_in "Avgsnr", with: @uplink.avgsnr
    fill_in "Data", with: @uplink.data
    fill_in "Lat", with: @uplink.lat
    fill_in "Long", with: @uplink.long
    fill_in "Rssi", with: @uplink.rssi
    fill_in "Snr", with: @uplink.snr
    fill_in "Thing", with: @uplink.thing_id
    click_on "Create Uplink"

    assert_text "Uplink was successfully created"
    click_on "Back"
  end

  test "updating a Uplink" do
    visit uplinks_url
    click_on "Edit", match: :first

    fill_in "Avgsnr", with: @uplink.avgsnr
    fill_in "Data", with: @uplink.data
    fill_in "Lat", with: @uplink.lat
    fill_in "Long", with: @uplink.long
    fill_in "Rssi", with: @uplink.rssi
    fill_in "Snr", with: @uplink.snr
    fill_in "Thing", with: @uplink.thing_id
    click_on "Update Uplink"

    assert_text "Uplink was successfully updated"
    click_on "Back"
  end

  test "destroying a Uplink" do
    visit uplinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uplink was successfully destroyed"
  end
end
