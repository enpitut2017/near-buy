class ItemShop < ApplicationRecord
  belongs_to :item
  belongs_to :shop

  enum stock: { full: 0, few: 1, out_of: 2}
  
  validates :stock, presence: true, inclusion: { in: ItemShop.stocks.keys }
end
