class HomePageSlide < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :header, :body, :image
  retina!
  has_attached_file :image, styles: {small: "200x200>", large: '1700x650>'}, retina: true

  belongs_to :content

  def set_content_association
  	self.content = Content.instance
  end
end
