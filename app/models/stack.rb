class Stack < ActiveRecord::Base
  attr_accessible :title, :slides_attributes
  has_many :slides

  accepts_nested_attributes_for :slides

  def title
    read_attribute(:title).gsub('_', ' ').capitalize
  end
end
