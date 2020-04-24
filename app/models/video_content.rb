class VideoContent < ApplicationRecord
  include HasTitleAndPlot

  scope :movies_and_seasons, -> { where(type: [Movie, Season]).order(created_at: :asc) }
  has_many :video_content_purchase_options, dependent: :destroy
  has_many :purchase_options, through: :video_content_purchase_options
end
