class AddHrefColumnToGalleryImage < ActiveRecord::Migration
  def change
  	add_column :vendors, :href, :string
  	add_column :events, :weekly, :boolean
  end
end
