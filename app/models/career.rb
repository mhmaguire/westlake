class Career < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :description, :end_at

  belongs_to :content

  def set_content_association
  	self.content = Content.last
  end
end
