require 'pg'

class User

  attr_reader :id, :name, :email, :password, :mobile_number

  def initialize(id, name, email, password, mobile_number)
		@id = id
		@name = name
    @email = email
    @password = password
    @mobile_number = mobile_number
	end

  def self.all
    connection = PG.connect(dbname: 'Makersbnb')

    result = connection.exec('SELECT * FROM "User"').to_a
    result.map do | user_hash |
      User.new(
        user_hash['id'],
        user_hash['name'],
        user_hash['email'],
        user_hash['password'],
        user_hash['mobile_number']
      )
    end
  end

  def self.auth
    # @user_email = "lauren@makers.tech"
    # @user_password = "qwerty"
    # if User.all[:email] == @user_email && User.all[:password] == @user_password
    #   return true
    # method to see if instance variables that contain form params match database?
    # end
  end
end