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
    connection = PG.connect(dbname: 'Makersbnb_test')

    result = connection.exec("SELECT * FROM 'guest_profiles';").to_a
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

  def self.email
		all_users = User.all
		all_users.map { |user| user.email }
	end

  def self.gets_user(email, password)
    connection = PG.connect(dbname: 'Makersbnb_test')
    result = connection.exec("SELECT * FROM 'guest_profiles', WHERE email = '#{email}' AND WHERE password = '#{password}';").to_a
  end

end