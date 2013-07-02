class EventContact < ActiveRecord::Base
  attr_accessible :name, :last_name, :email, :phone, :source
  belongs_to :event

  validates_presence_of :name, :last_name, :email, :phone
end
