require 'pg'

def test_data_script
  p "setting up test makersbnb"
  connection = PG.connect(dbname: 'Makersbnb_test')
  connection.exec('TRUNCATE guest_profiles;')
end