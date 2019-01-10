class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get'/songs/new' do

    erb :'/songs/new'
  end

  post '/songs' do
    @song=Song.create(:name => params[:name])
    redirect to "/songs/#{@song.id}"
  end

  get '/songs/:id/edit' do
    @songs=Song.find(params[:id])
    erb:'/songs/edit'
  end

  patch '/songs/:id' do
    @song=Song.find(params[:id])
    @song.name = params[:name]
    @song.save
    redirect to "/songs/#{@song.id}"
  end


  get'/songs/:id' do
    @song = Song.find(params[:id])
    erb:'/songs/show'
  end
end
