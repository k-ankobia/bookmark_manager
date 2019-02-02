require './app'

feature ' adding bookmarks' do
  scenario 'confirms I can add a bookmark' do
    visit('/bookmarks')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'testbookmark') 
    click_button 'Add Bookmark'
    expect(page).to have_content 'http://testbookmark.com'
  end
end
