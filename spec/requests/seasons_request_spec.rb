require 'rails_helper'

RSpec.describe "Seasons", type: :request do
  # initialize test data
  let!(:seasons_with_episodes) { create_list(:season_with_episodes, 10) }

  describe 'GET /seasons' do
    before { get '/api/v1/seasons' }

    it 'returns seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
      expect(json[0]).to have_key("episodes")
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
