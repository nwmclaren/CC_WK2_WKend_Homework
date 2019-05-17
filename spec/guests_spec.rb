require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuest < Minitest::Test

  def setup
    @guests_name = Guests.new("Neil", 50)
  end

  def test_guest_name
    assert_equal("Neil",@guests_name.guest_name)
  end

  def test_guest_money
    assert_equal(50,@guests_name.guest_money)
  end

end
