class Api::V1::MoviesController < ApplicationController
  include Response
  def index
    @movies = Movie.all
    json_response(@movies)
  end
end
