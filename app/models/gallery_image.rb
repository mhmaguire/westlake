class GalleryImage < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :image, :gallery_type
  retina!
  has_attached_file :image, styles: {small: "150x150>", large: "600x600>"}, retina: true

  belongs_to :content

  def set_content_association
  	self.content = Content.instance
  end
end
