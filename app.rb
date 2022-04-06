require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/listings'

class Makersbnb < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        @property_listings = Listings.all
     erb:home
    end

    # test login route
    get '/login' do
    erb:login
    end
    
    run! if app_file == $0
end