require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: ENV['DATABASE'])
    query = 'SELECT * FROM bookmarks;'
    results = connection.exec(query)
    results.map do |url_links|
      url_links['url']
    end
  end
end
