class Api::V1::SeasonsController < ApplicationController
  def index
    @seasons = Season.includes(:episodes)
    json_response(@seasons)
  end
end
