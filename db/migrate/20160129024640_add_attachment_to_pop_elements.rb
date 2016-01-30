class AddAttachmentToPopElements < ActiveRecord::Migration
  def self.up
    add_attachment :pop_elements, :image
  end

  def self.down
    remove_attachment :pop_elements, :image
  end
end
