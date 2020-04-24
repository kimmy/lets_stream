class SeasonSerializer < ApplicationSerializer
  attributes :id, :type, :title, :plot, :created_at
  has_many :episodes
end
