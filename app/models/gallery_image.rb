class GalleryImage < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :image, :gallery_type
  has_attached_file :image, styles: {small: "150x150>", large: "600x600>"}

  belongs_to :content

  scope :integrations, where(gallery_type: 'integrations')
  scope :designs, where(gallery_type: 'designs')

  def set_content_association
  	self.content = Content.last
  end
end
