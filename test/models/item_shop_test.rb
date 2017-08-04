require 'test_helper'

class ItemShopTest < ActiveSupport::TestCase
  test 'valid item_shops' do
    item = Item.create(name: 'item01', price: 0)
    shop = Shop.create(name: 'shop01', lat: 1.5, lng: 1.5)
    item_shop = ItemShop.new(item_id: item.id, shop_id: shop.id, stock: 0)
    assert item_shop.valid?
  end
end
