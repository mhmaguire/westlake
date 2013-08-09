class RvertChangesToAnnouncementsAndVendors < ActiveRecord::Migration
  def up
  	remove_column :vendors, :announcement_id
  	remove_column :vendors, :featured
  end

  def down
  	add_column :vendors, :announcement_id, :integer
  	add_column :vendors, :featured, :boolean
  end
end
