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
end
