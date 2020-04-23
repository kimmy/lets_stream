class VideoContent < ApplicationRecord
  validates :title, :plot, presence: true
end
