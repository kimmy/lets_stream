class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.list
    json_response(@movies)
  end
end
