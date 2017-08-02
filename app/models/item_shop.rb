class ItemShop < ApplicationRecord
  enum stock: { full: 0, few: 1, out_of: 2}
end
