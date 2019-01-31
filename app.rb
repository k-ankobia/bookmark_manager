require 'sinatra/base'
require_relative './lib/bookmark'
require 'dotenv/load'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/add_bookmark' do
    url = params['url']
    title = params['title']
    Bookmark.add_bookmark(url, title)
    redirect '/bookmarks'
  end
  run! if app_file == $PROGRAM_NAME
end
