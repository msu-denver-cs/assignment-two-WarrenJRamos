require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "Click here to add a new car"

    select("Toyota", from: "Make")
    fill_in "Model title", with: @car.model_title
    fill_in "Vin number", with: 1010
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    select("Toyota", from: "Make")
    fill_in "Model title", with: @car.model_title
    fill_in "Vin number", with: 1011
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end

  test "missing car model in search" do
    visit cars_url
    fill_in "search", with: "UnknownModel"
    click_on "Search"
    refute_selector "td"
  end

  test "found 1010 vin number" do
    visit cars_url
    fill_in "search", with: "1001"
    click_on "Search"
    assert_selector "td", text: "1001"
  end

end
