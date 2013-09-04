class AddPixelHeightToAnnouncements < ActiveRecord::Migration
  def change
  	add_column :announcements, :pixel_height, :integer, default: 300
  end
end
