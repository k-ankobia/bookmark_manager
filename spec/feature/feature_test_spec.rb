require './app'

RSpec.describe App do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmarker")
  end

  scenario 'confirms we can view bookmarks' do
    visit('/bookmarks')
    save_and_open_page
    expect(page).to have_content("http://www.google.com")
  end
end
