class Career < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :description, :end_at

  belongs_to :content

  has_many :contacts, class_name: "CareerContact" 

  def set_content_association
  	self.content = Content.last
  end
end
