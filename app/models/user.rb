class User < ApplicationRecord
  has_many :purchases, dependent: :destroy
  has_many :video_content_purchase_options, through: :purchases
  has_many :video_contents, through: :video_content_purchase_options

  validates :email, presence: true

  def library
    Rails.cache.fetch("#{id}-library", expires_in: 24.hours) do
      purchases.includes(video_content_purchase_option: :video_content).active
    end
  end
end
