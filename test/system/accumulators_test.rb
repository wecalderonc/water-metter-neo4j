require "application_system_test_case"

class AccumulatorsTest < ApplicationSystemTestCase
  setup do
    @accumulator = accumulators(:one)
  end

  test "visiting the index" do
    visit accumulators_url
    assert_selector "h1", text: "Accumulators"
  end

  test "creating a Accumulator" do
    visit accumulators_url
    click_on "New Accumulator"

    fill_in "Uplink", with: @accumulator.uplink_id
    fill_in "Value", with: @accumulator.value
    click_on "Create Accumulator"

    assert_text "Accumulator was successfully created"
    click_on "Back"
  end

  test "updating a Accumulator" do
    visit accumulators_url
    click_on "Edit", match: :first

    fill_in "Uplink", with: @accumulator.uplink_id
    fill_in "Value", with: @accumulator.value
    click_on "Update Accumulator"

    assert_text "Accumulator was successfully updated"
    click_on "Back"
  end

  test "destroying a Accumulator" do
    visit accumulators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accumulator was successfully destroyed"
  end
end
