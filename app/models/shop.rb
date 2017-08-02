class Shop < ApplicationRecord
  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
