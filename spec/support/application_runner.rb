class ApplicationRunner
  attr_accessor :auction_driver  
  
  def start
    @auction_driver.start
  end
  
  def stop
    @auction_driver.stop
  end
  
  def trips=(trips)
    Auction.stubs(:find_all_trips).returns(trips)
  end
  
  def place_bid(trip, bid)
    auction_driver.place_bid(trip, bid)
  end
  
  def bid_for(trip)
    auction_driver.bid_for(trip)
  end
end