class ProductsController < ApplicationController
  def index
  	@categories = Category.includes(:vendors).order(:title)
  	@features = Announcement.all
  end

  def alpha
  	@vendors = Vendor.group(:name).group_by{|v| v.name[0]}
  	@features = Announcement.all
  end
end
