class Season < VideoContent
  has_many :episodes, foreign_key: 'season_id', dependent: :destroy

  after_save :clear_cache

  def self.list
    Rails.cache.fetch('seasons', expires_in: 24.hours) do
      self.includes(:episodes)
    end
  end

  private

  def clear_cache
    Rails.cache.delete('seasons')
  end
end
