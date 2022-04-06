feature "login" do
  scenario "user submits login details with correct detials" do
		connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES('Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');")
		visit '/login' 
		
		fill_in :email, with: "sam.smith@gmail.com"
		fill_in :password, with: "samlovescheese"
		click_button("Login")

    expect(page).to have_content "Hello, Sam Smith"
	end

	scenario "user submits login details with WRONG detials" do
		connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES('Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');")
		visit '/login' 
		
		fill_in :email, with: "sam.smith@gmail.com"
		fill_in :password, with: "samlovesbiscuits"
		click_button("Login")

    expect(page).to have_content "Email Address: "
	end
end

