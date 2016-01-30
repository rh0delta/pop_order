class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :status
      t.datetime :order_date
      t.datetime :ship_date
      t.timestamps null: false
    end
  end
end
