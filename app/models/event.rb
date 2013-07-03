class Event < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :description, :start_date, :image, :weekley
  retina!
  has_attached_file :image, styles: {small: '150x150>', large: '1700x650>'}, retina: true

  belongs_to :content
  has_many :event_contacts

  scope :upcoming, where('start_date >?', Time.now)

  DAYNAMES = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

  def set_content_association
  	self.content = Content.instance
  end

  def is_past?
  	return (Time.now.midnight - 1.day) > start_date
  end

  def is_weekly?
  	return weekly || false
  end

  def day
  	DAYNAMES[self.start_date.wday] 
  end
end
