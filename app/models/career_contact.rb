class CareerContact < ActiveRecord::Base
  attr_accessible :email, :name, :message, :resume 
  has_attached_file :resume

  belongs_to :career
end
