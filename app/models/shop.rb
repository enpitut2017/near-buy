class Shop < ApplicationRecord
  has_many :item_shops
  has_many :item, through: :item_shops

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
