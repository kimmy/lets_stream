class Api::V1::SeasonsController < ApplicationController
  include Response
  def index
    @seasons = Season.includes(:episodes)
    json_response_with_includes(@seasons, :episodes)
  end
end
