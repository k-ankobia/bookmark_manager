require 'bookmark'
require 'web_helper.rb'
require 'database_helper'

describe Bookmark do
  before :each do
    Webhelper.reset
    # add_dummy_data
  end

  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 1
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'

      
    end




  end

  describe '.create' do
    it 'adds new bookmark to table' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'testbookmark')

      persisted_data = persisted_data(id: bookmark.id)

    expect(bookmark).to be_a Bookmark
    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'testbookmark'
    expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end
end
