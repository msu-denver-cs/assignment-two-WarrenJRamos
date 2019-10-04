require "application_system_test_case"

class MakesTest < ApplicationSystemTestCase
  setup do
    @make = makes(:one)
  end

  test "visiting the index" do
    visit makes_url
    assert_selector "h1", text: "Makes"
  end

  test "creating a Make" do
    visit makes_url
    click_on "New Make"

    fill_in "Country", with: "Italy"
    fill_in "Name", with: "Maserati"
    click_on "Create Make"

    assert_text "Make was successfully created"
    click_on "Back"
  end

  test "updating a Make" do
    visit makes_url
    click_on "Edit", match: :first

    fill_in "Country", with: "Japan"
    fill_in "Name", with: "Honda"
    click_on "Update Make"

    assert_text "Make was successfully updated"
    click_on "Back"
  end

  test "destroying a Make" do
    visit makes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Make was successfully destroyed"
  end

  test "missing make in search" do
    visit makes_url
    fill_in "search", with: "UnknownMake"
    click_on "Search"
    refute_selector "td"
  end

  test "found Toyota in search" do
    visit makes_url
    fill_in "search", with: "Toyota"
    click_on "Search"
    assert_selector "td", text: "Toyota"
  end
end
