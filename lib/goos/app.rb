require "sinatra/base"
require "sinatra/reloader"

class App < Sinatra::Base
  register Sinatra::Reloader if development?
  
  get "/" do
    @trips = Auction.trips
    @trip = Auction.trip(params[:trip_id]) if params[:trip_id]
    @bids = Auction.bids
    erb :home
  end
  
  post "/" do
    trip = Auction.trip(params[:trip_id])
    bid = params[:bid]
    Auction.place_bid(trip, bid)
    
    if request.env["HTTP_X_REQUESTED_WITH"].nil?
      redirect "/"
    else
      "{\"trip_id\": #{trip.id}, \"amount_for_trip\": #{bid}}"
    end
  end
  
end