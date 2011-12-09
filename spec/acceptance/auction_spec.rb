require 'spec_helper'

describe "Auction" do
  
  it "should support to place a bid on a trip" do
    trip = Trip.new("1", "Barcelona")
    @application_runner.trips=[trip]
    @application_runner.place_bid(trip, 275)
    eventually {@application_runner.bid_for(trip).should == 275}
  end

end