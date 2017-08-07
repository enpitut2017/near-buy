class Item < ApplicationRecord
  has_many :item_shops
  has_many :shops, through: :item_shops

  validates :name, presence: true
  validates :price, presence: true,
                    numericality: {
                      only_integer: true,
                      greater_than_or_equal_to: 0
                    }

  scope :search_by_name, ->(name) { where('like(?)', "%#{name}%") }
end
