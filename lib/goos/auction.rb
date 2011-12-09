module Auction
  
  def trips
    find_all_trips
  end
  
  def trip(id)
    find_all_trips.select{|t| t.id == id}.first
  end
  
  def bids
    @bids ||= {}
  end
  
  def place_bid(trip, bid)
    sleep rand(3)
    @bids ||= {}
    @bids[trip.id] = bid
  end

  def find_all_trips
    [Trip.new("2", "New York")]
  end
  
  module_function :trips, :trip, :bids, :place_bid, :find_all_trips
end
