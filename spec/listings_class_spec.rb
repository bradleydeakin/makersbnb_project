require 'listings'
require 'pg'

RSpec.describe '.all' do
  it 'returns the property listings' do
    connection = PG.connect(dbname: 'makersbnb_test')

    connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms,summary, price, host_id, picture_url) VALUES('Beach House', '14 somerset bay', 'somserset', 'SO3 14SB', 4, 4, 2,'beach house in somerset', 100, 123456, 'img');")
    connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms,summary, price, host_id, picture_url) VALUES('city apartment', '23a camden street', 'london', 'LO2 23CS', 2, 2, 2,'city apartment in camden', 100, 11, 'img');")
    connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms,summary, price, host_id, picture_url) VALUES('country cottage', '10 clover street', 'cotswald', 'CO1 10CS', 4, 4, 2,'charming cottage in the country', 150, 12, 'img');")

    properties = Listings.all

    expect(properties.length).to eq 3
    expect(properties[0].property_name).to eq 'Beach House'
    expect(properties[0].price).to eq '100'
  end
end