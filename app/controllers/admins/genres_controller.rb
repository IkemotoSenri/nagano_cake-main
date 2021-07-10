class Admins::GenresController < ApplicationController
  def index
    @genre_new = Genre.new
    @genres = Genre.all
  end 
  
  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to admins_genres_path
  end
  
  def update
    @genre = Genre_new.find(params[:id])
    @genre.update(genre_params)
    redirect_to admins_genres_path
  end
end
