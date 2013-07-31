class Vendor < ActiveRecord::Base
  attr_accessible :name, :image, :category_id, :href, :featured
  before_save :update_featured
  retina! 
  has_attached_file :image, styles: {medium: '150x300>'}, retina: true

  belongs_to :category 

  scope :featured, where(featured: true)
  belongs_to :announcement, inverse_of: :vendors




  def get_href
  	raw(href)
  end

  private 
  	def update_featured
  		unless announcement.nil? 
  			self.featured = true
  		else 
  			self.featured = nil
  		end
  	end
end
