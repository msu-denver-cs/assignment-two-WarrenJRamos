require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "for empty make name and country" do
    m = Make.create({:name => "", :country => ""})
    refute m.valid?
    refute m.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"], :country =>["is too short (minimum is 2 characters)"]},
      m.errors.messages)
  end

  test "for one character make name" do
    m = Make.create({:name => "a", :country => "a"})
    refute m.valid?
    refute m.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"], :country =>["is too short (minimum is 2 characters)"]},
      m.errors.messages)
  end

  test "for two character name" do
    m = Make.create({:name => "aa", :country => "USA"})
    assert m.valid?
    assert m.save
    assert_equal({}, m.errors.messages)
  end
end
