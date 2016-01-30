class Cart < ActiveRecord::Base
  # scope :no_items, ->(id) {where(id: id).sum(:item_quantity)}
end
