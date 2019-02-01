require './app'

RSpec.describe App do
  scenario 'confirms home page is working' do
    visit('/')
  end

  scenario 'confirms we can view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("http://www.yahoo.com")
  end
end
