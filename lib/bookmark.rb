require 'pg'
require 'dotenv/load'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.all
    connection = PG.connect(dbname: ENV['DATABASE'])
    query = 'SELECT * FROM bookmarks;'
    results = connection.exec(query)
    results.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

    def self.create(url:, title:)
      connection = PG.connect(dbname: ENV['DATABASE'])
      query = "INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title"
      results = connection.exec(query)
      Bookmark.new(id: results[0]['id'], title: results[0]['title'], url: results[0]['url'])

    end
end
