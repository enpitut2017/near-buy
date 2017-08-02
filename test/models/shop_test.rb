require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  test 'valid shop' do
    item = Shop.new(name: 'shop01', lat: 1.0000, lng: 1.0000)
    assert item.valid?
  end

  test 'invalid without name' do
    item = Shop.new(name: '', lat: 1.0000, lng: 1.0000)
    refute item.valid?, 'shop is valid without a name'
    assert_not_nil item.errors[:name], 'no validation error for name present'
  end

  test 'invalid without lat' do
    item = Shop.new(name: 'shop01', lat: nil, lng: 1.0000)
    refute item.valid?, 'shop is valid without a lat'
    assert_not_nil item.errors[:lat], 'no validation error for lat present'
  end

  test 'invalid without lng' do
    item = Shop.new(name: 'shop01', lat: 1.000, lng: nil)
    refute item.valid?, 'shop is valid without a lng'
    assert_not_nil item.errors[:lng], 'no validation error for lng present'
  end
end
