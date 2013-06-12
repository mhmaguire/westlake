class Employee < ActiveRecord::Base
  attr_accessible :title, :name, :description, :image
  has_attached_file :image, styles: {medium: '250x250>'}
end
