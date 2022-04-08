feature "login" do
  scenario "user submits login details with correct detials" do
		connection = PG.connect(dbname: 'makersbnb_test')
        connection.exec("INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES('Mrs Higgins', 'sarah_h@gmail.com', 'Password1', '07582069491');")
	    visit '/login' 
		
		fill_in :email, with: "sarah_h@gmail.com"
		fill_in :password, with: "Password1"
		click_button("Login")

    expect(page).to have_content "Hello, Mrs Higgins"
	end

	scenario "user submits login details with WRONG details" do
		connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO guest_profiles (name, email, password, mobile_number) VALUES('Sam Smith', 'sam.smith@gmail.com', 'samlovescheese', '07654321789');")
		visit '/login' 
		
		fill_in :email, with: "sam.smith@gmail.com"
		fill_in :password, with: "samlovesbiscuits"
		click_button("Login")

    expect(page).to have_content "Email Address: "
	end
end

