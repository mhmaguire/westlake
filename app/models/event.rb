class Event < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :description, :start_date, :image
  retina!
  has_attached_file :image, styles: {small: '150x150>', large: '1700x650>'}, retina: true

  belongs_to :content
  has_many :event_contacts

  def set_content_association
  	self.content = Content.instance
  end
end
