class AddHashToCart < ActiveRecord::Migration
  def change
    add_column :carts, :item_id, :integer
    add_column :carts, :item_quantity, :integer
  end
end
