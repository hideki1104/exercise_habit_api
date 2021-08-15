class GenresController < ApplicationController
  def create
    genre = Genre.new(training_params)
    if genre.save
      render json: genre
    else
      render json: genre.errors
    end
  end

  def index
    genres = Genre.all
    render json:genres
  end

  def training_params
    params.permit(:name)
  end
end
