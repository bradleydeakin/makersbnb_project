feature 'view all listings' do
    scenario 'displays a summary of all properties' do
        connection = PG.connect(dbname: 'makersbnb_test')
        connection.exec("INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
        VALUES('Beach House', '14 Somerset Bay', 'Somerset', 'SM20 7LT', '8', '5', '2', 'This holiday property is ideal for family groups, equipped with three living rooms and a enclosed lawned garden. Conveniently situated just minutes from the M5, it is an ideal touring base from which to explore the beautiful Somerset countryside and its famous attractions. The sea can be reached within 1.5 miles, and the coastal resorts of Burnham-on-Sea, Brean and Weston-super-Mare are within a 10 minute drive. Walking and cycling can be enjoyed in the Mendip Hills, The Quantocks and along the Somerset Levels.', '80', '1', 'https://media.istockphoto.com/photos/new-villa-patio-idea-picture-id609089692?s=612x612' );")
        
        visit('/listings')

        expect(page).to have_content 'Beach House'
    end
end