module Auction
  
  def trips
    find_all_trips
  end
  
  def trip(id)
    find_all_trips.select{|t| t.id == id}.first
  end
  
  def find_all_trips
    [Trip.new("2", "New York")]
  end
  
  module_function :trips, :trip, :find_all_trips
end
