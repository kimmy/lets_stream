class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    json_response(@movies)
  end
end
