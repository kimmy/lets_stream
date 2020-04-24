class EpisodeSerializer < ApplicationSerializer
  attributes :id, :number, :title, :plot
  belongs_to :season
end
