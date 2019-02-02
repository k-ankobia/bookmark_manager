require 'pg'
require 'dotenv/load'

class Bookmark
  def self.all
    connection = PG.connect(dbname: ENV['DATABASE'])
    query = 'SELECT * FROM bookmarks;'
    results = connection.exec(query)
    results.map do |url_links|
      url_links['url']
    end
  end

    def self.create(url:, title:)
      connection = PG.connect(dbname: ENV['DATABASE'])
      query = "INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title"
      connection.exec(query)
    end
end
