class Employee < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :name, :description, :image
  has_attached_file :image, styles: {medium: '250x250>'}

  belongs_to :content

  def set_content_association
  	self.content = Content.last
  end
end
