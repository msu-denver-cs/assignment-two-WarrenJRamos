require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "shouldn't find a car" do
    assert Car.where("model_title like ?", "NOT A MODEL").length == 0
  end

  test "should find cars from the fixture" do
    assert Car.where("model_title like ?", "4Runner").length == 1
  end

  test "searches always return 200" do
    get search_cars_url, params: { search: "Bob" }
    assert_equal 200, status
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { make_id: @car.make_id, model_title: @car.model_title, vin_number: 1999 } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should find 4Runner" do
    get search_cars_url, params: { search: "4Runner" }
    assert_select 'td', '4Runner'
  end 

  test "should find 1000" do
    get search_cars_url, params: { search: "1000" }
    assert_select 'td', '1000'
  end 

  test "shouldn't find MyString" do
    get search_cars_url, params: { search: "MyString" }
    assert_select 'td', false
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { make_id: @car.make_id, model_title: @car.model_title, vin_number: @car.vin_number } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
