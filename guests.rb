class Guests

#  attr_reader :guest_name
  attr_accessor :guest_name, :guest_money

  def initialize(guest_name, guest_money)
    @guest_name = guest_name
    @guest_money = guest_money
  end

  def reduce_money(entry_fee)
    @guest_money -= entry_fee
  end
  
end
