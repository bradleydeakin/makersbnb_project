require 'sinatra/base'
require 'sinatra/reloader'
require './lib/user.rb'


class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    'home page branch'
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
      # need to work out how to check params against database
  end

  get '/listings'do
   @guest_name = session[:name]
   erb :listings
  end

  run! if app_file == $0
end