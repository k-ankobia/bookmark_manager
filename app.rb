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
<<<<<<< HEAD
    title = params['title']
    Bookmark.add_bookmark(url, title)
=======
    Bookmark.add_bookmark(url)
>>>>>>> testingv2
    redirect '/bookmarks'
  end
  run! if app_file == $PROGRAM_NAME
end
