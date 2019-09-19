class GenresController < ApplicationController

  get '/genres' do
    @genre = Genre.all
    erb :'genres/index'
  end

end
