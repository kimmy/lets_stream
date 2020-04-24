class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :video_content_purchase_option

  before_save :set_expiry

  default_scope { order(expires_at: :asc) }

  private

  VALIDITY = 2.days

  def set_expiry
    expires_at = DateTime.now + VALIDITY
  end
end
