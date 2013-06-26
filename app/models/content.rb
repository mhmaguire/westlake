class Content < ActiveRecord::Base
  attr_accessible :ceo_letter, :la_life, :benefits, :company_culture, :gen_info 

  has_many :gallery_images
  has_many :careers
  has_many :employees
  has_many :home_page_slides
  has_many :categories
  has_many :events

  def default_image
  	home_page_slides.first.image
  end
end
