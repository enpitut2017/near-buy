require 'test_helper'

class ItemShopTest < ActiveSupport::TestCase
  def setup
    @valid_item = Item.create(name: 'item01', price: 0)
    @valid_shop = Shop.create(name: 'shop01', lat: 1.5, lng: 1.5)
  end
  
  test 'valid item_shops' do
    item_shop = ItemShop.new(item_id: @valid_item.id, shop_id: @valid_shop.id, stock: 0)
    assert item_shop.valid?
  end
  
  test 'invalid without item' do
    item_shop = ItemShop.new(shop_id: @valid_shop.id, stock: 0)
    refute item_shop.valid?, 'item_shop is invalid without item_id'
    assert_not_nil item_shop.errors[:item_id], 'no validation error for item_id present'
  end
    
  test 'invalid without shop' do
    item_shop = ItemShop.new(item_id: @valid_item.id, stock: 0)
    refute item_shop.valid?, 'item_shop is invalid without shop_id'
    assert_not_nil item_shop.errors[:shop_id], 'no validation error for shop_id present'
  end
  
  test 'invalid without stock' do
    item_shop = ItemShop.new(item_id: @valid_item.id, shop_id: @valid_shop.id)
    refute item_shop.valid?, 'item_shop is invalid without stock'
    assert_not_nil item_shop.errors[:stock], 'no validation error for stock present'
  end
  
  test 'invalid stock out of range' do
    assert_raises ArgumentError do
      ItemShop.new(item_id: @valid_item.id,shop_id: @valid_shop.id, stock: -1)
    end
    assert_raises ArgumentError do
      ItemShop.new(item_id: @valid_item.id, shop_id: @valid_shop.id, stock: 3)
    end
  end
end
