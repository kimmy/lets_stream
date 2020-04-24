require 'rails_helper'

RSpec.describe "Libraries", type: :request do
  let!(:users_with_purchases) { create_list(:user_with_purchases, 5) }
  let(:user) { users_with_purchases.sample }

  describe 'GET /users/:id/library' do
    before { get "/api/v1/users/#{user.id}/library" }

    it 'returns the user\'s library' do
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
