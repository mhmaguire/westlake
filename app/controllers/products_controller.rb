class ProductsController < ApplicationController
  def index
  	@categories = Category.includes(:vendors).order(:title)
  end
end
