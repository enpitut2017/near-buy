class AddDetailsColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :price, :integer
    add_column :items, :manufacturer, :string
  end
end
