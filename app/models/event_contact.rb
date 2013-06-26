class EventContact < ActiveRecord::Base
  attr_accessible :name
  belongs_to :event

  validates_presence_of :name
end
