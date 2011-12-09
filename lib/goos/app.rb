require "sinatra/base"
require "sinatra/reloader"

class App < Sinatra::Base
  register Sinatra::Reloader if development?
  
  get "/" do
    erb :home
  end
end