require 'test_helper'

class MakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @make = makes(:one)
  end

  test "shouldn't find a make name" do
    assert Make.where("name like ?", "NOT A MAKE").length == 0
  end

  test "should find make names from the fixture" do
    assert Make.where("name like ?", "Honda").length == 1
  end

  test "searches always return 200" do
    get search_makes_url, params: { search: "Make" }
    assert_equal 200, status
  end

  test "should find Honda" do
    get search_makes_url, params: { search: "Honda" }
    assert_select 'td', 'Honda'
  end

  test "shouldn't find MyString" do
    get search_makes_url, params: { search: "MyString" }
    assert_select 'td', false
  end

  test "should get index" do
    get makes_url
    assert_response :success
  end

  test "should get new" do
    get new_make_url
    assert_response :success
  end

  test "should create make" do
    assert_difference('Make.count') do
      post makes_url, params: { make: { country: @make.country, name: @make.name } }
    end

    assert_redirected_to make_url(Make.last)
  end

  test "should not create unprocessable make" do
    assert_no_difference('Make.count') do
      post makes_url, params: { make: { name: "a", country: "a" } }
    end
  
    assert_response :success
  end

  test "should show make" do
    get make_url(@make)
    assert_response :success
  end

  test "should get edit" do
    get edit_make_url(@make)
    assert_response :success
  end

  test "should update make" do
    patch make_url(@make), params: { make: { country: @make.country, name: @make.name } }
    assert_redirected_to make_url(@make)
  end

  test "should not update unprocessable make" do
    patch make_url(@make), params: { make: { name: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 
      country: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"} }
    assert_response :success
  end

  test "should destroy make" do
    assert_difference('Make.count', -1) do
      delete make_url(@make)
    end

    assert_redirected_to makes_url
  end
end
