require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }

  it { should have_many(:purchases) }
  it { should have_many(:video_content_purchase_options).through(:purchases) }
  it { should have_many(:video_contents).through(:video_content_purchase_options) }
end
