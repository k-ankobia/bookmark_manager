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

    def self.add_bookmark(url)
      connection = PG.connect(dbname: ENV['DATABASE'])
      query = "INSERT INTO bookmarks(url) VALUES('#{url}')
      ;"
      connection.exec(query)
    end
end