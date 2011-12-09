require "sinatra/base"
require "sinatra/reloader"

class App < Sinatra::Base
  register Sinatra::Reloader if development?
  
  get "/" do
    @trips = Auction.trips
    erb :home
  end
end