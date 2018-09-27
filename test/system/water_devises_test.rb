require "application_system_test_case"

class WaterDevisesTest < ApplicationSystemTestCase
  setup do
    @water_devise = water_devises(:one)
  end

  test "visiting the index" do
    visit water_devises_url
    assert_selector "h1", text: "Water Devises"
  end

  test "creating a Water devise" do
    visit water_devises_url
    click_on "New Water Devise"

    fill_in "Address", with: @water_devise.address
    fill_in "Current Value", with: @water_devise.current_value
    fill_in "Lat", with: @water_devise.lat
    fill_in "Location", with: @water_devise.location
    fill_in "Long", with: @water_devise.long
    fill_in "Name", with: @water_devise.name
    fill_in "State", with: @water_devise.state
    click_on "Create Water devise"

    assert_text "Water devise was successfully created"
    click_on "Back"
  end

  test "updating a Water devise" do
    visit water_devises_url
    click_on "Edit", match: :first

    fill_in "Address", with: @water_devise.address
    fill_in "Current Value", with: @water_devise.current_value
    fill_in "Lat", with: @water_devise.lat
    fill_in "Location", with: @water_devise.location
    fill_in "Long", with: @water_devise.long
    fill_in "Name", with: @water_devise.name
    fill_in "State", with: @water_devise.state
    click_on "Update Water devise"

    assert_text "Water devise was successfully updated"
    click_on "Back"
  end

  test "destroying a Water devise" do
    visit water_devises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Water devise was successfully destroyed"
  end
end
