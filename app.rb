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
    @user_email = params[:email]
    @user_password = params[:password]
    # take params email and password and save as  instance variables
    
    # if statement for redirect 
    # if email and password params match User.email and User.password then redirect to listings page with User.name displayed at top.
    # if
  end



  run! if app_file == $0
end