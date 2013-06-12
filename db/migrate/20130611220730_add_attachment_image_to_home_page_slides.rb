class AddAttachmentImageToHomePageSlides < ActiveRecord::Migration
  def self.up
    change_table :home_page_slides do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :home_page_slides, :image
  end
end
