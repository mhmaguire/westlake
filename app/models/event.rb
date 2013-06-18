class Event < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :description, :start_date, :image
  has_attached_file :image, styles: {small: '150x150>'}

  belongs_to :content

  def set_content_association
  	self.content = Content.last
  end
end
