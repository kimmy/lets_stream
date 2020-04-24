class User < ApplicationRecord
  has_many :purchases
  has_many :video_content_purchase_options, through: :purchases
  has_many :video_contents, through: :video_content_purchase_options

  validates :email, presence: true
end
