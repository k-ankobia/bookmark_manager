require 'sinatra/base'
require_relative './lib/bookmark'

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
    Bookmark.add_bookmark(url)
    redirect '/bookmarks'
  end
  run! if app_file == $PROGRAM_NAME
end
