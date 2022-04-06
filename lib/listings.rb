require 'pg'

class Listings 
  attr_reader :id, :property_name, :address_line_1, :county, :post_code, :total_occupancy, :total_bedrooms, :total_bathrooms, :summary, :price, :host_id, :picture_url

  def initialize(id, property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms,summary, price, host_id, picture_url)

    @id = id
    @property_name = property_name
    @address_line_1 = address_line_1
    @county = county
    @post_code = post_code
    @total_occupancy = total_occupancy
    @total_bedrooms = total_bedrooms
    @total_bathrooms = total_bathrooms
    @summary = summary
    @price = price
    @host_id = host_id
    @picture_url = picture_url
  end

  def self.all
    connection=PG.connect(dbname:'Makersbnb')
    result = connection.exec('SELECT * FROM Listings;').to_a
    result.map do | property |
      Listings.new(
        property['id'], 
        property['property_name'], 
        property['address_line_1'], 
        property['county'],
        property['post_code'], 
        property['total_occupancy'],
        property['total_bedrooms'],
        property['total_bathrooms'],
        property['summary'],
        property['price'],
        property['host_id'],
        property['picture_url']
      )
    end

    p result
  end
end
