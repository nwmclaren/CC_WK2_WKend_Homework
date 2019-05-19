require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < Minitest::Test

def setup
  @song_1 = Songs.new("Changes")
  @song_2 = Songs.new("Perfect Day")
  @songs = [@song_1,@song_2]
  @guest_1 = Guests.new("Neil", 50)
  @guest_2 = Guests.new("Bob", 10)
  @guest_3 = Guests.new("Charles", 10)
  @guests = [@guest_1,@guest_2]
  @rooms = Rooms.new("1-2",@guests,@songs,3, 20)
  @rooms_1 = Rooms.new("1-2",@guests,@songs,2, 20)
end

def test_room_name
  assert_equal("1-2",@rooms.room_name)
end

def test_guest_check_in
  @rooms.guest_check_in("John",@rooms.capacity,@rooms.entry_fee,@guest_1.guest_money)
  assert_equal(true,@guests.include?("John"))
end

def test_guest_check_out
  @rooms.guest_check_out("Neil")
  assert_equal(false,@guests.include?("Neil"))
end

def test_add_song
  @rooms.add_song("Life on Mars")
  assert_equal(true, @songs.include?("Life on Mars"))
end

def test_capacity_breached
  @rooms_1.guest_check_in("John",@rooms.capacity,@rooms.entry_fee,@guest_1.guest_money)
  assert_equal(false,@guests.include?("John"))
end

def test_guest_money_reduced
  assert_equal(30, @guest_1.reduce_money(@rooms.entry_fee))
end


# def test_guest_check_in
#   @rooms.guest_check_in
#   assert_equal(true,@rooms)

end
