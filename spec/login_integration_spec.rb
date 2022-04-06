require './lib/user.rb'

RSpec.describe ".all" do
	it "returns an email from database" do
		connection = PG.connect(dbname: 'Makersbnb_test')
    connection.exec("INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES('Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');")
		users_emails = User.email
		expect(users_emails).to include('sam.smith.com')
	end
end

