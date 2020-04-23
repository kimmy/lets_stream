class Season < VideoContent
  has_many :episodes, foreign_key: 'season_id', dependent: :destroy
end
