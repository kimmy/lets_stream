require 'rails_helper'

RSpec.describe VideoContentPurchaseOption, type: :model do
  it { should belong_to(:video_content) }
  it { should belong_to(:purchase_option) }
end
