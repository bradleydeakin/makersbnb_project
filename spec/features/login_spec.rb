feature "login" do
  scenario "user submits login details with correct detials" do
		visit '/login' 
		fill_in :email, with: "email_address"
		fill_in :password, with: "password"
		click_on "Login"

    expect(page).to have_content "email_address"
	end
end