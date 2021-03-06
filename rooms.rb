class Rooms

  attr_reader :room_name, :capacity, :entry_fee
  attr_accessor :guest, :song

  def initialize(room_name,guest,song,capacity,entry_fee)
    @room_name = room_name
    @guest = guest
    @song = song
    @capacity = capacity
    @entry_fee = entry_fee
  end

  def guest_check_in(guest_name, capacity,entry_fee,guest_money)
    if @guest.length >= @capacity
      return
    else
      @guest.push(guest_name)
    end
  end

  def guest_check_out(guest_name)
    @guest.delete(guest_name)
  end

  def add_song(song_name)
      @song.push(song_name)
  end

  def favourite_song_check(fav_song)
    if @song.include?(fav_song)
      return "Whoo!"
    end
  end

end
