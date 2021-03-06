class AuctionWebDriver
  include Capybara::DSL
  
  def start
    Capybara.app = App
    Capybara.default_driver = :selenium
  end
  
  def stop
  end
  
  def place_bid(trip, bid)
    visit "/"
    click_on "select_trip_#{trip.id}"
    fill_in "bid", :with => bid
    click_on "place_bid"
  end
  
  def bid_for(trip)
    find("#trip_bid_#{trip.id}").text.to_i
  end
end