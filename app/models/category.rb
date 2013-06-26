class Category < ActiveRecord::Base
  before_save :set_content_association
  attr_accessible :title, :vendors_attributes

  has_many :vendors, dependent: :destroy
  belongs_to :content

  accepts_nested_attributes_for :vendors

  def pretty_title
  	title.gsub('_', ' ')
  end

  def set_content_association
  	self.content = Content.instance
  end
end
