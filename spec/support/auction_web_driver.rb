class AuctionWebDriver
  
  def start
  end
  
  def stop
  end
  
  def place_bid(trip, bid)
    visit "/"
    click_on "select_trip_#{trip.id}"
    fill_in "bid", :with => bid
    click_on "place_bid"
  end
end