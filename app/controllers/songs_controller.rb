class SongsController < ApplicationController

  get '/songs' do
    @song = Song.all
    erb :'songs/index'
  end

  get '/songs/:slug' do
    @artist = Artist.all
    @song = Song.all
    #binding.pry
    erb :'/songs/show'
    binding.pry 
  end
end
