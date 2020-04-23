require 'rails_helper'

RSpec.describe VideoContent, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
end
