require './lib/listings.rb'
require 'pg'

RSpec.describe ".gets_listing" do
	it "returns a chosen listing from database" do
		connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
    VALUES('Beach House', '14 Somerset Bay', 'Somerset', 'SM20 7LT', '8', '5', '2', 'Summary', '80', '1', 'https://media.istockphoto.com/photos/new-villa-patio-idea-picture-id609089692?s=612x612');")
		listing = Listings.gets_listing("1")
    property_name = listing.first.property_name
    post_code = listing.first.post_code
		expect(property_name).to include("Beach House")
    expect(post_code).to include("SM20 7LT")
	end
end