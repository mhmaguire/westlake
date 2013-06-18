class AddAttachmentResumeToCareerContacts < ActiveRecord::Migration
  def self.up
    change_table :career_contacts do |t|
      t.attachment :resume
    end
  end

  def self.down
    drop_attached_file :career_contacts, :resume
  end
end
