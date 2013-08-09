class Announcement < ActiveRecord::Base
  attr_accessible :title, :body, :image
  retina!
  has_attached_file :image, styles: {small: "200x200>", large: '1700x650>'}, retina: true

end
