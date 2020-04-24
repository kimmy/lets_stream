class Movie < VideoContent
  after_save :clear_cache

  def self.list
    Rails.cache.fetch('movies', expires_in: 24.hours) do
      self.all
    end
  end

  private

  def clear_cache
    Rails.cache.delete('seasons')
  end
end
