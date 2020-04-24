class User < ApplicationRecord
  has_many :purchases, dependent: :destroy
  has_many :video_content_purchase_options, through: :purchases
  has_many :video_contents, through: :video_content_purchase_options

  validates :email, presence: true

  def library
    purchases.includes(video_content_purchase_option: :video_content).active
  end
end
