require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:users_with_purchases) { create_list(:user_with_purchases, 5) }
  let(:user) { users_with_purchases.sample }

  describe 'GET /users' do
    before { get "/api/v1/users/#{user.id}" }

    it 'returns the user' do
      expect(json).not_to be_empty
      expect(json).to have_key("email")
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
