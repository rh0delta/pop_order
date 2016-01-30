class RenameColumnPopElements < ActiveRecord::Migration
  def change
    rename_column :pop_elements, :type, :master_type
    add_column :pop_elements, :sub_type, :string
  end
end
