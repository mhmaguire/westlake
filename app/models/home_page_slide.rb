class HomePageSlide < ActiveRecord::Base
  attr_accessible :header, :body, :image 
  has_attached_file :image, styles: {small: '150x150>'}
end
