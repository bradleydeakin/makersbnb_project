require 'sinatra/base'
require 'sinatra/reloader'
require './lib/user.rb'

require_relative 'lib/listings'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    @property_listings = Listings.all
    erb:home
  end

  get '/login' do
    erb :login
  end

  post '/login_auth' do
    email = params[:email]
    password = params[:password]

    guest = User.gets_user(email, password)
    if guest == []
      redirect '/login'
    else
      session[:name] = guest.first["name"]
      redirect '/listings'
    end
  end

  get '/listings'do
   @guest_name = session[:name]
   erb :listings
  end

  run! if app_file == $0
end