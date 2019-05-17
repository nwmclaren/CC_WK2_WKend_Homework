require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < Minitest::Test

def setup
  @song = Songs.new("Changes")
end

  def test_song_name
    assert_equal("Changes",@song.song_name)
  end

end
