class AddAttachmentImageToVendors < ActiveRecord::Migration
  def self.up
    change_table :vendors do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :vendors, :image
  end
end
