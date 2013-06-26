class AddIdentifierToGallerYImage < ActiveRecord::Migration
  def change
  	add_column :gallery_images, :gallery_type, :string
  end
end
