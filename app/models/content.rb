class Content < ActiveRecord::Base
  attr_accessible :ceo_letter, :la_life, :benefits, :company_culture, :gen_info
  validates_inclusion_of :singleton_guard, in: [0]

  has_many :gallery_images
  has_many :careers
  has_many :employees
  has_many :home_page_slides
  has_many :categories
  has_many :events

  def self.instance 
    Content.find_by_singleton_guard(0)
  end

end
