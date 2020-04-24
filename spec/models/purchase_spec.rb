require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:video_content_purchase_option) }

  describe "duplicate purchases" do
    let(:user) { create(:user_with_purchases)}
    let(:purchases) { user.purchases }
    let(:new_video_content_purchase_option) { create(:video_content_purchase_option) }
    let(:recently_purchased_item) { purchases.last.video_content_purchase_option }
    let(:duplicate_purchase) do
      user.purchases.new(
        video_content_purchase_option: recently_purchased_item
      )
    end

    it "validates that there's no duplicate purchase" do
      expect(duplicate_purchase).to_not be_valid
      new_purchase = user.purchases.new(video_content_purchase_option: new_video_content_purchase_option)
      expect(new_purchase).to be_valid
    end

    it "returns an error when you're trying to purchase an active purchase" do
      expect {
        duplicate_purchase.save!
      }.to raise_error.with_message(/You still have an active purchase for the selected content./)
    end
  end

  describe "active scope" do
    let(:purchases) { create_list(:purchase, 3) }
    let(:expired_purchases) { create_list(:purchase, 3, expires_at: 2.days.ago) }

    it "will only return active purchases" do
      expect(Purchase.active).to eq(purchases)
    end

    it "will not include expired purchases" do
      expect(Purchase.active.pluck(:id)).to_not include(expired_purchases.first.id)
    end
  end
end
