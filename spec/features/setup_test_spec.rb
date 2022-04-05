feature 'tests thats web app loads' do
    scenario 'starting web app' do
        visit('/')
        expect(page).to have_content 'hello world'
    end
end