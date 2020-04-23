require 'rails_helper'

RSpec.describe VideoContent, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }

  it { should have_many(:video_content_purchase_options).dependent(:destroy) }
  it { should have_many(:purchase_options).through(:video_content_purchase_options) }
end
