class HomePageSlide < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :header, :body, :image 
  has_attached_file :image, styles: {large: '1700x650>'}

  belongs_to :content

  def set_content_association
  	self.content = Content.last
  end
end
