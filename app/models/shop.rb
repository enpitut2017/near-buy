class Shop < ApplicationRecord
  has_many :item_shops
  has_many :item, through: :item_shops

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true

  def self.distance(request_lat, request_lng)
    order("ABS(lat - #{request_lat} ) * ABS(lat - #{request_lat} ) +
           ABS(lng - #{request_lng} ) * ABS(lng - #{request_lng} )")
  end
end
