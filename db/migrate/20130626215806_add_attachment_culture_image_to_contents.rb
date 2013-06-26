class AddAttachmentCultureImageToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :ceo_img
      t.attachment :culture_img
      t.attachment :la_life_img
      t.attachment :benefits_img
      t.attachment :openings_img 
    end
  end

  def self.down
    drop_attached_file :contents, :culture_img
    drop_attached_file :contents, :la_life_img
    drop_attached_file :contents, :benefits_img
    drop_attached_file :contents, :openings_img
    drop_attached_file :contents, :ceo_img
  end
end
