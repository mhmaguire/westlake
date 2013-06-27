class AddAttachmentFeatImgToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :feat_img
      t.attachment :feat_img2
    end
  end

  def self.down
    drop_attached_file :contents, :feat_img
    drop_attached_file :contents, :feat_img2 
  end
end
