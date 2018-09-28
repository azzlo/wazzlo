require 'test_helper'

class ContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @container = containers(:one)
  end

  test "should get index" do
    get containers_url
    assert_response :success
  end

  test "should get new" do
    get new_container_url
    assert_response :success
  end

  test "should create container" do
    assert_difference('Container.count') do
      post containers_url, params: { container: { address: @container.address, high_capacity: @container.high_capacity, high_sensor: @container.high_sensor, last_sensor: @container.last_sensor, lat: @container.lat, location: @container.location, long: @container.long, low_capacity: @container.low_capacity, low_sensor: @container.low_sensor, name: @container.name, state: @container.state } }
    end

    assert_redirected_to container_url(Container.last)
  end

  test "should show container" do
    get container_url(@container)
    assert_response :success
  end

  test "should get edit" do
    get edit_container_url(@container)
    assert_response :success
  end

  test "should update container" do
    patch container_url(@container), params: { container: { address: @container.address, high_capacity: @container.high_capacity, high_sensor: @container.high_sensor, last_sensor: @container.last_sensor, lat: @container.lat, location: @container.location, long: @container.long, low_capacity: @container.low_capacity, low_sensor: @container.low_sensor, name: @container.name, state: @container.state } }
    assert_redirected_to container_url(@container)
  end

  test "should destroy container" do
    assert_difference('Container.count', -1) do
      delete container_url(@container)
    end

    assert_redirected_to containers_url
  end
end
