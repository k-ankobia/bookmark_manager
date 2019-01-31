module Webhelper
  def self.sign_in; end

  def self.reset
    connection = PG.connect(dbname: ENV['DATABASE'])
    result = connection.exec('TRUNCATE TABLE bookmarks;')
  end

  def self.add_dummy_data
    connection = PG.connect(dbname: ENV['DATABASE'])
    result = connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.google.com');")
  end
end