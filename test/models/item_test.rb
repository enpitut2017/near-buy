require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'valid item' do
    item = Item.new(name: 'item01')
    assert item.valid?
  end

  test 'invalid without name' do
    item = Item.new(name: '')
    refute item.valid?, 'user is valid without a name'
    assert_not_nil item.errors[:name], 'no validation error for name present'
  end
  
  test 'invalid without price' do
    item = Item.new(name: 'foo', price: nil)
    refute item.valid?, 'item price is invalid without a price'
    assert_not_nil item.errors[:price], 'no validation error for price present'
  end
  
  test 'invalid negative price' do
    item = Item.new(name: 'foo', price: -1)
    refute item.valid?, 'item price is invalid negative value'
    assert_not_nil item.errors[:price], 'no validation error for price present'
  end
  
  test 'invalid non integer price' do
    item = Item.new(name: 'foo', price: 0.1)
    refute item.valid?, 'item price is invalid non integer value'
    assert_not_nil item.errors[:price], 'no validation error for price present'
  end
end
