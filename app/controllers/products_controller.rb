class ProductsController < ApplicationController
  def index
  	@categories = Category.includes(:vendors).order(:title)
  	@featured_vendors = Vendor.featured
  end
end
