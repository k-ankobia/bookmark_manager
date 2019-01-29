require 'pg'

class Bookmark
  def self.all
    connectDP = PG.connect(dbname: 'bookmark_manager') # connect to bookmark_manager
    results = connectDP.exec('SELECT * FROM bookmarks;') #selects bookmarks table
    results.map do |url_links|
      url_links["url"]
  end
  end
end