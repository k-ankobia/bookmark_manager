require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager') # connect to bookmark_manager
    query = 'SELECT * FROM bookmarks;'
    results = connection.exec(query) #selects bookmarks table
    p 'results'
    p results
    results.map do |url_links|
      url_links["url"]
  end
  end
end