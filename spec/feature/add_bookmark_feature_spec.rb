require './app'

RSpec.describe App do
  scenario 'confirms I can add a bookmark' do
    visit('/bookmarks')
    fill_in :url, with: 'http://www.reddit.com'
    click_button 'Add Bookmark'
    expect(page).to have_content "reddit"
    expect(page).to have_content "Bookmark Added"
  end
  end