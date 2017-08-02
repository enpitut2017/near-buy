class Item < ApplicationRecord
  has_many :item_shops
  has_many :shops, through: :item_shops

  validates :name, presence: true
end
