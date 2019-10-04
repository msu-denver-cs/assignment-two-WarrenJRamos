require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test "for empty part name" do
    p = Part.create({:part_name => ""})
    refute p.valid?
    refute p.save
    assert_equal({:part_name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end

  test "for one character part name" do
    p = Part.create({:part_name => "a"})
    refute p.valid?
    refute p.save
    assert_equal({:part_name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end

  test "for two character name" do
    p = Part.create({:part_name => "aa"})
    assert p.valid?
    assert p.save
    assert_equal({}, p.errors.messages)
  end
  # test "the truth" do
  #   assert true
  # end
end
