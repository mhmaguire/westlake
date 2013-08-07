class Employee < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :name, :email, :phone, :image, :body
  retina!
  has_attached_file :image, styles: {medium: '250x250>'}, retina: true

  belongs_to :content

  def set_content_association
  	self.content = Content.instance
  end
end
