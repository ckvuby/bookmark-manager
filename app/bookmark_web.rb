require 'sinatra/base'
require_relative '../lib/bookmarks'


class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @url = params[:add_url]
    Bookmarks.add_url(@url)
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0

end
