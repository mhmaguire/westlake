class AddAttachmentToAnnouncements < ActiveRecord::Migration
  def self.up
    change_table :announcements do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :announcements, :image
  end
end
