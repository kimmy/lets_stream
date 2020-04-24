class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :video_content_purchase_option

  delegate :video_content, to: :video_content_purchase_option

  before_save :set_expiry
  before_create :valid_purchase

  scope :active, -> { where('expires_at > ?', DateTime.now) }
  default_scope { order(expires_at: :asc) }

  def active?
    expires_at > DateTime.now
  end

  private

  VALIDITY = 2.days

  def set_expiry
    expires_at = DateTime.now + VALIDITY
  end

  def valid_purchase
    same_purchase = self.class.where(user_id: user_id, video_content_purchase_option_id: video_content_purchase_option_id)
    if same_purchase.any?(&:active?)
      errors.add(:base, "You still have an active purchase for the selected content.")
    end
  end
end
