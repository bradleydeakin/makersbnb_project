require './lib/user.rb'

RSpec.describe ".all" do
	it "returns an email from database" do
		connection = PG.connect(dbname: 'Makersbnb_test')
    connection.exec('INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES ("Jo Bloggs", "example@email.com", "qwerty", "07123456789");')
		users_emails = User.email
		expect(users_emails).to include('example@email.com')
	end
end

