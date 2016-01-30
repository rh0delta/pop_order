class CreatePopElements < ActiveRecord::Migration
  def change
    create_table :pop_elements do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.boolean :availability
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
