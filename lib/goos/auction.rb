module Auction
  
  def trips
    find_all_trips
  end
  
  def trip(id)
    find_all_trips.select{|t| t.id == id}.first
  end
  
  def place_bid(trip, bid)
    @bids ||= {}
    @bids[trip.id] = bid
  end

  def find_all_trips
    [Trip.new("2", "New York")]
  end
  
  module_function :trips, :trip, :place_bid, :find_all_trips
end
