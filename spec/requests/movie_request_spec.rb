require 'rails_helper'

RSpec.describe "Movies", type: :request do
  # initialize test data
  let!(:movies) { create_list(:movie, 10) }

  describe 'GET /movies' do
    before { get '/api/v1/movies' }

    it 'returns movies' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
