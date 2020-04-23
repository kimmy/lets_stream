class Episode < ApplicationRecord
  include HasTitleAndPlot

  belongs_to :season

  validates :number, presence: true

  default_scope { order(number: :asc) }
end
