require 'bookmark'
require 'web_helper.rb'

describe Bookmark do
  before :each do
    Webhelper.reset
    Webhelper.add_dummy_data
  end

  describe '.all' do
    # let (:bookmark) {double :bookmark}

    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include
      ('http://www.yahoo.com')
    end
  end
end
