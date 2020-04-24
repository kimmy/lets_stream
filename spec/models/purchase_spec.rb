require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:video_content_purchase_option) }
end
