CREATE TABLE "listings" (id SERIAL PRIMARY KEY, property_name VARCHAR(60), address_line_1 VARCHAR, county VARCHAR, post_code VARCHAR(9), total_occupancy INT, total_bedrooms INT, total_bathrooms INT, summary VARCHAR, price INT, host_id INT, picture_url VARCHAR)

INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
VALUES('Beach House', '14 Somerset Bay', 'Somerset', 'SM20 7LT', '8', '5', '2', 'This holiday property is ideal for family groups, equipped with three living rooms and a enclosed lawned garden. Conveniently situated just minutes from the M5, it is an ideal touring base from which to explore the beautiful Somerset countryside and its famous attractions. The sea can be reached within 1.5 miles, and the coastal resorts of Burnham-on-Sea, Brean and Weston-super-Mare are within a 10 minute drive. Walking and cycling can be enjoyed in the Mendip Hills, The Quantocks and along the Somerset Levels.', '80', '1', 'https://media.istockphoto.com/photos/new-villa-patio-idea-picture-id609089692?s=612x612' );

INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
VALUES('Magical Woodland Cottage', '2 Buterly Lane', 'Cotswalds', 'CL4 8LE', '6', '3', '2', 'Traditional foresters cottage with wonderful views across the Flaxley valley on the edge of the Royal Forest of Dean. The garden is as beautiful as the cottage with our Cedar Gazebo taking centre place. Sit out at night where the silence is only broken by the hooting owls. We have wonderful views from our elevated position over the Flaxley valley and woodland beyond. From the garden gate you can walk into nearby woodland or a short journey takes you to the heart of the ancient Forest of Dean.', '70', '2', 'https://media.https://media.istockphoto.com/photos/beautiful-house-picture-id1202670565?s=612x612istockphoto.com/photos/new-villa-patio-idea-picture-id609089692?s=612x612');

INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
VALUES('Glamping Retreat', 'Gooseberry Fields', 'Cranbrook', 'CR17 9TL', '4', '2', '1', 'The hut is a self contained lodge near to beaches of Freshwater West, Broad Haven, Bosherston lily ponds, Barafundle ,Stack Rocks ,the Green Bridge of Wales. etc.Sleeps up to 4 in 1 room . Ideal for a young family and couples. The hut comes with a kitchenette ,own shower room, toilet.Electric heating and woodburner ,double glazed for all year round use.Perfect for a summer or winter get away.', '50', '3', 'https://www.istockphoto.com/photo/summer-holidays-with-dog-at-the-camping-gm1386628039-444808853');

INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
VALUES('Westward Surfing Bay', 'Northam Burrows', 'Devon', 'EX39 1LY', '6', '4', '2', 'From the main lobby, accessed up a flight of stairs Penthouse 5 is perched at the very top of the building. Light streams in from two glass domes giving a feeling of spaciousness. With a huge wrap-around balcony and stunning views from Weymouth on the left, along the Jurassic coastline, Teignmouth seafront, Torbay and Shaldon. There are three bedrooms, three bathrooms and a huge living area.', '45', '3', 'https://media.istockphoto.com/photos/beautiful-woman-carrying-surfboard-against-hotel-picture-id1162072188?s=612x612');

INSERT INTO listings (property_name, address_line_1, county, post_code, total_occupancy, total_bedrooms, total_bathrooms, summary, price, host_id, picture_url)
VALUES('Modern Lake House', 'Cutland Woods', 'Chelmsford', 'CH6 2NB', '10', '6', '3', 'An awe inspiring and historical destination, its stag logo reflecting origins as a red deer park. The 325 acre estate boasts breathtaking views, superb golf courses, a beautiful wedding venue, luxury accommodation and health club.', '80', '5', 'https://media.istockphoto.com/photos/triangular-modern-lake-house-at-fall-picture-id1327080125?s=612x612');