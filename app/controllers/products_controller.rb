class ProductsController < ApplicationController
  def index
  	@categories = Category.includes(:vendors).order(:title)
  	@features = Announcement.all
  end

  def alpha
  	@vendors = Vendor.group(:name)
  	@features = Announcement.all
  end
end
