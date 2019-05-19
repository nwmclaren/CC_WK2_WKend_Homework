class Guests

#  attr_reader :guest_name
  attr_accessor :guest_name, :guest_money, :favourite_song

  def initialize(guest_name, guest_money, favourite_song)
    @guest_name = guest_name
    @guest_money = guest_money
    @favourite_song = favourite_song
  end

  def reduce_money(entry_fee)
    @guest_money -= entry_fee
  end

end
