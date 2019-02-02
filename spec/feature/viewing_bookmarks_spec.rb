require './app'

RSpec.describe App do
  feature 'Viewing Bookmarks' do
    scenario 'confirms homepage is working' do
      visit('/')
      expect(page).to have_content('Welcome To Bookmarker')
    end

    scenario 'confirms we can view table bookmarks' do
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

      visit('/bookmarks')
      expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    end
  end
end
