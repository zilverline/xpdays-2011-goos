class ApplicationRunner
  attr_accessor :auction_driver  
  
  def start
    @auction_driver.start
  end
  
  def stop
    @auction_driver.stop
  end
  
  def place_bid(trip, bid)
    auction_driver.place_bid(trip, bid)
  end
end