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

  def self.add_bookmark(url, title)
    connection = PG.connect(dbname: ENV['DATABASE'])
    query = "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}');"
    connection.exec(query)
  end
end
