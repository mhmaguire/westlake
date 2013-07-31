class Announcement < ActiveRecord::Base
  attr_accessible :title, :body, :vendor_ids

  has_many :vendors
end
