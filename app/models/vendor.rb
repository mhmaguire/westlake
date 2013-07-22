class Vendor < ActiveRecord::Base
  attr_accessible :name, :image, :category_id, :href
  retina! 
  has_attached_file :image, styles: {medium: '150x300>'}, retina: true

  belongs_to :category 

  def get_href
  	raw(href)
  end
end
