class AddContentFk < ActiveRecord::Migration
  def up
  	add_column :careers, :content_id, :integer
  	add_column :employees, :content_id, :integer
  	add_column :gallery_images, :content_id, :integer
  	add_column :home_page_slides, :content_id, :intenger
  end

  def down
  	remove_column :careers, :content_id
  	remove_column :employees, :content_id
  	remove_column :gallery_images, :content_id
  	remove_column :home_page_slides, :content_id
  end
end
