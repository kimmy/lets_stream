class Api::V1::SeasonsController < ApplicationController
  def index
    @seasons = Season.list
    json_response(@seasons)
  end
end
