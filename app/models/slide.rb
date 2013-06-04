class Slide < ActiveRecord::Base
  attr_accessible :title, :body, :summary, :image
  has_attached_file :image, styles: {medium: '300x300>', small: '100x100>'}
  belongs_to :stack

  def to_url 
  	title.gsub(' ', '') 
  end

end
