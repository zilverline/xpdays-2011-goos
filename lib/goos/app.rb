require "sinatra/base"
require "sinatra/reloader"

class App < Sinatra::Base
  register Sinatra::Reloader if development?
  
  get "/" do
    @trips = Auction.trips
    @trip = Auction.trip(params[:trip_id]) if params[:trip_id]
    erb :home
  end
end