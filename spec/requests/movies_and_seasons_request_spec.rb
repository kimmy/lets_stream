require 'rails_helper'

RSpec.describe "MoviesAndSeasons", type: :request do
  let!(:seasons_with_episodes) { create_list(:season_with_episodes, 10) }
  let!(:movies) { create_list(:movie, 10) }

  describe 'GET /movies_and_seasons' do
    before { get '/api/v1/movies_and_seasons' }

    it 'returns both movies and seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(20)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
