class VideoContent < ApplicationRecord
  include HasTitleAndPlot

  has_many :video_content_purchase_options, dependent: :destroy
  has_many :purchase_options, through: :video_content_purchase_options

  scope :movies_and_seasons, -> { cached_movies_and_seasons }

  after_save :clear_cache

  private

  def self.cached_movies_and_seasons
    Rails.cache.fetch('movies_and_seasons', expires_in: 24.hours) do
      where(type: [Movie, Season]).order(created_at: :asc)
    end
  end

  def clear_cache
    Rails.cache.delete('movies_and_seasons')
  end
end
