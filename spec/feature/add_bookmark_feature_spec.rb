require './app'

RSpec.describe App do
  scenario 'confirms I can add a bookmark' do
    visit('/bookmarks')
    fill_in :url, with: 'http://www.testname.com'
    click_button 'Add Bookmark'
    save_and_open_page('./capybara/file.html')
    expect(page).to have_content'testname'
  end
end
