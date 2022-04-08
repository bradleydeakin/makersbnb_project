require 'user'
require 'pg'

RSpec.describe ".update" do 
    it "updates the database" do 
    connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO guest_profiles (id,name, email, password, mobile_number) VALUES(6,'Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');")
    connection.exec("UPDATE guest_profiles SET name = 'Sarah Samuel', email = 'Sarah606@gmail.com', password = 'Lucky66', mobile_number = '07842456789' WHERE id = 6;")
    guest = User.all
    p guest
    expect(guest[0].name).to eq 'Sarah Samuel'
    end
end 