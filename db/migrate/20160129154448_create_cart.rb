class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :order_id
      t.timestamps null: false
    end
  end
end
