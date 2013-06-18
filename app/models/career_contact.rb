class CareerContact < ActiveRecord::Base
  attr_accessible :email, :name, :resume 
  has_attached_file :resume

  validates_presence_of :email, :name

  belongs_to :career
end
