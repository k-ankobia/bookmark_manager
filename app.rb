require 'sinatra/base'
require_relative './lib/bookmark'
require 'dotenv/load'


class App < Sinatra::Base

  get '/' do
    'Welcome to the Bookmarker'
    erb :'index'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    p @bookmarks
    erb :'bookmarks/index'
  end

  post '/add_bookmark' do
    url = params['url']
    p params
    Bookmark.add_bookmark(url)
    redirect '/bookmarks'
  end
  run! if app_file == $0
end
