class AddHstoreToCart < ActiveRecord::Migration
  def change
    remove_column :carts, :item_id
    remove_column :carts, :item_quantity
    enable_extension :hstore
    add_column :carts, :items, :hstore, default: {}
  end
end
