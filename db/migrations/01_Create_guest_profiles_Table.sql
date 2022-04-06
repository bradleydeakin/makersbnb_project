CREATE TABLE guest_profiles (id SERIAL PRIMARY KEY, name VARCHAR(60), email VARCHAR(60), password VARCHAR(20), mobile_number VARCHAR(11), profile_picture VARCHAR)

INSERT INTO guest_profiles (name, email, password, mobile_number) 
VALUES('John Doe', 'john.doe@hotmail.co.uk', 'unknown', '07431970498');

INSERT INTO guest_profiles (name, email, password, mobile_number) 
VALUES('Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');

INSERT INTO guest_profiles (name, email, password, mobile_number) 
VALUES('Mrs Higgins', 'sarah_h@gmail.com', 'Password1', '07582069491');

INSERT INTO guest_profiles (name, email, password, mobile_number) 
VALUES('Lauren Prendergast, 'lauren@makers.tech', 'qwerty', '07908321567');