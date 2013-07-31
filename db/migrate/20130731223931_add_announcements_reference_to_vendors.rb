class AddAnnouncementsReferenceToVendors < ActiveRecord::Migration
  def change
  	add_column :vendors, :announcement_id, :integer
  end
end
