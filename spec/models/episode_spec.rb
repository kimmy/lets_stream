require 'rails_helper'

RSpec.describe Episode, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
  it { should validate_presence_of(:number) }
end
