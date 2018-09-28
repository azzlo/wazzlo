require "application_system_test_case"

class ContainersTest < ApplicationSystemTestCase
  setup do
    @container = containers(:one)
  end

  test "visiting the index" do
    visit containers_url
    assert_selector "h1", text: "Containers"
  end

  test "creating a Container" do
    visit containers_url
    click_on "New Container"

    fill_in "Address", with: @container.address
    fill_in "High Capacity", with: @container.high_capacity
    fill_in "High Sensor", with: @container.high_sensor
    fill_in "Last Sensor", with: @container.last_sensor
    fill_in "Lat", with: @container.lat
    fill_in "Location", with: @container.location
    fill_in "Long", with: @container.long
    fill_in "Low Capacity", with: @container.low_capacity
    fill_in "Low Sensor", with: @container.low_sensor
    fill_in "Name", with: @container.name
    fill_in "State", with: @container.state
    click_on "Create Container"

    assert_text "Container was successfully created"
    click_on "Back"
  end

  test "updating a Container" do
    visit containers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @container.address
    fill_in "High Capacity", with: @container.high_capacity
    fill_in "High Sensor", with: @container.high_sensor
    fill_in "Last Sensor", with: @container.last_sensor
    fill_in "Lat", with: @container.lat
    fill_in "Location", with: @container.location
    fill_in "Long", with: @container.long
    fill_in "Low Capacity", with: @container.low_capacity
    fill_in "Low Sensor", with: @container.low_sensor
    fill_in "Name", with: @container.name
    fill_in "State", with: @container.state
    click_on "Update Container"

    assert_text "Container was successfully updated"
    click_on "Back"
  end

  test "destroying a Container" do
    visit containers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Container was successfully destroyed"
  end
end
