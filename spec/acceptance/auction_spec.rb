require 'spec_helper'

describe "Auction" do
  
  it "should support to place a bid on a trip" do
    @application_runner.place_bid(trip, 275)
    eventually {@application_runner.bid_for(trip).should == 275}
  end

end