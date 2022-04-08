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
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else 
    connection = PG.connect(dbname: 'makersbnb')
    end
    result = connection.exec("SELECT * FROM guest_profiles;").to_a
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
    connection = PG.connect(dbname: 'makersbnb')
    result = connection.exec("SELECT * FROM guest_profiles WHERE email = '#{email}' AND password = '#{password}';").to_a
  end

  def self.update(id,name, email, password, phone_number)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else 
    connection = PG.connect(dbname: 'makersbnb')
    end
    result = connection.exec("UPDATE guest_profiles SET name = '#{name}', email = '#{email}', password = '#{password}', mobile_number = '#{phone_number}' WHERE id = '#{id}'")
  end
end
 