require './app'

RSpec.describe App do
  feature 'Viewing Bookmarks' do
    scenario 'confirms homepage is working' do
      visit('/')
      expect(page).to have_content('Welcome To Bookmarker')
    end

    scenario 'confirms we can view table bookmarks' do
      visit('/bookmarks')
      expect(page).to have_content('http://www.yahoo.com')
    end
  end
end
