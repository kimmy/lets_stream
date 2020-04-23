module HasTitleAndPlot
  extend ActiveSupport::Concern

  included do
    validates :title, :plot, presence: true
  end
end
