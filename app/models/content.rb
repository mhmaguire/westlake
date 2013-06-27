class Content < ActiveRecord::Base
  attr_accessible :ceo_letter, :la_life, :benefits, :company_culture, :gen_info,
      :ceo_img, :benefits_img, :la_life_img, :culture_img, :openings_img
  validates_inclusion_of :singleton_guard, in: [0]

  has_attached_file :ceo_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :benefits_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :la_life_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :culture_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :openings_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :feat_img, styles: {small: '200x200>', large: '1700x650>'}, retina: true
  has_attached_file :feat_img2, styles: {small: '200x200>', large: '1700x650>'}, retina: true

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
