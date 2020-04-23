class PurchaseOption < ApplicationRecord
  validates :price, :quality, presence: true

  enum quality: {
    hd: "HD",
    sd: "SD"
  }, _suffix: "quality"
end
