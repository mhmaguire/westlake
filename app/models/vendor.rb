class Vendor < ActiveRecord::Base
  attr_accessible :name, :image 
  has_attached_file :image, styles: {medium: '300x300>'}

  belongs_to :category 
end
