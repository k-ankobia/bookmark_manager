require './app'

RSpec.describe App do
  scenario 'confirms I can add a bookmark' do
    visit('/bookmarks')
    Bookmark.add_bookmark("testname.com")
    click_button 'Add Bookmark'
    expect(page).to have_content'testname'
  end
end
