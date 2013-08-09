class ProductsController < ApplicationController
  def index
  	@categories = Category.includes(:vendors).order(:title)
  	@features = Announcement.all
  end
end
