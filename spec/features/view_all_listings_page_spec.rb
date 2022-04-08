feature 'view all listings' do
    scenario 'displays a summary of all properties' do
        connection = PG.connect(dbname: 'makersbnb_test')
        connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
        VALUES('Beach House', '14 Somerset Bay', 'Somerset', 'SM20 7LT', '8', '5', '2', 'Summary description', '80', '1', 'https://media.istockphoto.com/photos/new-villa-patio-idea-picture-id609089692?s=612x612' );")
        
        visit('/listings')

        expect(page).to have_content "Beach House"
    end
end