class Gallery < ActiveRecord::Base
  attr_accessible :title, :body, :g_type
  has_many :gallery_images

  GALLERY_TYPES = ['Post Production', 'Music Production', 'Education', 'House of Worship']

  def self.gallery_types
  	GALLERY_TYPES
  end


end
