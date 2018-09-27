require 'test_helper'

class WaterDevisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_devise = water_devises(:one)
  end

  test "should get index" do
    get water_devises_url
    assert_response :success
  end

  test "should get new" do
    get new_water_devise_url
    assert_response :success
  end

  test "should create water_devise" do
    assert_difference('WaterDevise.count') do
      post water_devises_url, params: { water_devise: { address: @water_devise.address, current_value: @water_devise.current_value, lat: @water_devise.lat, location: @water_devise.location, long: @water_devise.long, name: @water_devise.name, state: @water_devise.state } }
    end

    assert_redirected_to water_devise_url(WaterDevise.last)
  end

  test "should show water_devise" do
    get water_devise_url(@water_devise)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_devise_url(@water_devise)
    assert_response :success
  end

  test "should update water_devise" do
    patch water_devise_url(@water_devise), params: { water_devise: { address: @water_devise.address, current_value: @water_devise.current_value, lat: @water_devise.lat, location: @water_devise.location, long: @water_devise.long, name: @water_devise.name, state: @water_devise.state } }
    assert_redirected_to water_devise_url(@water_devise)
  end

  test "should destroy water_devise" do
    assert_difference('WaterDevise.count', -1) do
      delete water_devise_url(@water_devise)
    end

    assert_redirected_to water_devises_url
  end
end
