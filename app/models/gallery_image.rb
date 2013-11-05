class GalleryImage < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :image, :gallery_type, :caption
  retina!
  has_attached_file :image, styles: {small: "200x200>", large: "1400x1400>"}, retina: true

  belongs_to :content
  belongs_to :gallery

  def set_content_association
  	self.content = Content.instance
  end
end
