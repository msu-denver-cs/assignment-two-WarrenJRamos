require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "for empty make and an empty car model" do
    c = Car.create({ make_id: 1, model_title: "", vin_number: 1050})
    refute c.valid?
    refute c.save
    assert_equal({:make=>["must exist", "can't be blank"], :model_title=>["can't be blank", "is too short (minimum is 2 characters)"]},
      c.errors.messages)
  end

  test "for a valid make and a one letter car model" do
    @make = makes(:one)
    c = Car.create({ make_id: @make.id, model_title: "a", vin_number: 1050})
    refute c.valid?
    refute c.save
    assert_equal({:model_title=>["is too short (minimum is 2 characters)"]},
      c.errors.messages)
  end

  test "for a valid make and a two letter car model (valid)" do
    @make = makes(:one)
    c = Car.create({ make_id: @make.id, model_title: "aa", vin_number: 1050})
    assert c.valid?
    assert c.save
    assert_equal({}, c.errors.messages)
  end

  test "for a valid make, model, but a non-unique vin number" do
    @car = cars(:two)
    c = Car.create({ make_id: @car.make_id, model_title: @car.model_title, vin_number: @car.vin_number})
    refute c.valid?
    refute c.save
    assert_equal({:vin_number=>["has already been taken"]},
      c.errors.messages)
  end

  test "for a valid make, model, but an invalid vin number with letters and invalid length" do
    @car = cars(:two)
    c = Car.create({ make_id: @car.make_id, model_title: @car.model_title, vin_number: "aaa"})
    refute c.valid?
    refute c.save
    assert_equal({:vin_number=>["is the wrong length (should be 4 characters)", "is not a number"]},
      c.errors.messages)
  end
end
