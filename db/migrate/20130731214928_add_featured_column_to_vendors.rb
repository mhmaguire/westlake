class AddFeaturedColumnToVendors < ActiveRecord::Migration
  def change
  	add_column :vendors, :featured, :boolean
  end
end
