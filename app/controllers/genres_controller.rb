class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end

  get'/genres/new' do

    erb :'/genres/new'
  end

  post '/genres' do

    @genre=Genre.create(:name => params[:name])
    redirect to "/genres/#{@genre.id}"
  end

  get '/genres/:id/edit' do
    @genres=Genre.find(params[:id])
    erb:'/genres/edit'
  end

  patch '/genres/:id' do
    @genre=Genre.find(params[:id])
    @genre.name = params[:name]
    @genre.save
    redirect to "/genres/#{@genre.id}"
  end

  get'/genres/:id' do
    @genre = Genre.find(params[:id])
    erb:'/genres/show'
  end


end
