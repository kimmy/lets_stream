require 'rails_helper'

RSpec.describe "Purchases", type: :request do
  let!(:users) { create_list(:user, 5) }
  let(:video_content_purchase_options) { create_list(:video_content_purchase_option, 5) }
  let(:video_content_purchase_option) { video_content_purchase_options.sample }

  describe 'POST /purchases' do
    context "valid purchase" do
      let(:user) { users.sample }
      let(:params) do
        {
          purchase: {
            user_id: user.id,
            video_content_purchase_option_id: video_content_purchase_option.id
          }
        }
      end

      it "should be successful" do
        post '/api/v1/purchases', params: params
        expect(response).to be_successful
      end
    end

    context "duplicate purchase" do
      let(:purchase) { create(:purchase) }
      let(:user) { purchase.user }
      let(:params) do
        {
          purchase: {
            user_id: user.id,
            video_content_purchase_option_id: purchase.video_content_purchase_option_id
          }
        }
      end

      it "should return an error" do
        post '/api/v1/purchases', params: params
        expect(response.status).to eq(422)
        expect(json["error"]).to eq("Validation failed: You still have an active purchase for the selected content.")
      end
    end
  end
end
