class VideoContent < ApplicationRecord
  include HasTitleAndPlot

  has_many :video_content_purchase_options, dependent: :destroy
  has_many :purchase_options, through: :video_content_purchase_options
end
