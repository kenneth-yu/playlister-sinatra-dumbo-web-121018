class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :'/artists/index'
  end

  get'/artists/new' do

    erb :'/artists/new'
  end

  post '/artists' do
    @artist=artist.create(:name => params[:name])
    redirect to "/artists/#{@artist.id}"
  end

  get '/artists/:id/edit' do
    @artists=Artist.find(params[:id])
    erb:'/artists/edit'
  end

  patch '/artists/:id' do
    @artist=Artist.find(params[:id])
    @artist.name = params[:name]
    @artist.save
    redirect to "/artists/#{@artist.id}"
  end

  # get'/artists/:id' do
  #   @artist = Artist.find(params[:id])
  #   erb:'/artists/show'
  # end

  get'/artists/:id' do
    @artist = Artist.find(params[:id])
    erb:'/artists/show'
  end

end
