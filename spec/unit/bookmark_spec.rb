require 'bookmark'
require 'web_helper.rb'

describe Bookmark do
  before :each do
    Webhelper.reset
    Webhelper.add_dummy_data
  end

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.yahoo.com')
    end
  end

  describe '.create' do
    it 'adds new bookmark to table' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'testbookmark').first
      expect(bookmark['url']).to eq 'http://www.testbookmark.com'
      expect(bookmark['title']).to eq 'testbookmark'
    end
  end
end
