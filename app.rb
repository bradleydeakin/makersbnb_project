require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/user'
require_relative 'lib/formatter'
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
        # possibly redirect to new route containing options to login again or sign up or view listings???
    else
      session[:name] = guest.first["name"]
      redirect '/listings'
    end
  end

  get '/listings'do
   @guest_name = session[:name]
   @property_listings = Listings.all

   erb :listings
  end

  get '/account' do
    p params[:guest_email]
    erb :account
  end

  post '/my-trips' do 
    erb :my_trips
  end 

  post '/update-details' do 
    erb :update_details
  end 

	get '/property_details' do
    id = params[:property_id].to_i
		@property = Listings.gets_listing(id)
    @today = Formatter.date_today
    @tomorrow = Formatter.date_tomorrow
    erb :property_details
	end


  post '/booking_confirmation' do
    id = params[:property_id].to_i
    @property = Listings.gets_listing(id)
    @check_in = Formatter.format(params[:check_in])
    @check_out = Formatter.format(params[:check_out])
    @total_days = Formatter.calculate_no_of_days(params[:check_in], params[:check_out])
    @total_price = Formatter.total_price(@property.first.price, @total_days)
    erb :booking_confirmation
  end

  post '/confirm_booking' do
    # save all params from form add them to reservations table
    redirect '/account'
  end

  run! if app_file == $0
end