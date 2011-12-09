module Auction
  
  def trips
    find_all_trips
  end
  
  def find_all_trips
    [Trip.new("2", "New York")]
  end
  
  module_function :trips, :find_all_trips
end
