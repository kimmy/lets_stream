class VideoContentPurchaseOptionSerializer < ApplicationSerializer
  attributes :id
  belongs_to :video_content
  belongs_to :purchase_option
end
