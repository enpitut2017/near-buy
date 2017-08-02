class CreateItemShops < ActiveRecord::Migration[5.1]
  def change
    create_table :item_shops do |t|
      t.integer :item_id
      t.integer :shop_id
      t.integer :stock

      t.timestamps
    end
  end
end
