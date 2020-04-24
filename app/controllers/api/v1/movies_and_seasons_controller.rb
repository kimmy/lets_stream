class Api::V1::MoviesAndSeasonsController < ApplicationController
  def index
    @movies_and_seasons = VideoContent.movies_and_seasons
    json_response_with_each_serializer(@movies_and_seasons, VideoContentSerializer)
  end
end
