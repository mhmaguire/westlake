class GalleryController < ApplicationController
	def index
		@galleries = get_galleries
	end

	def show
		@gallery = Gallery.includes(:gallery_images).find(params[:id])
		@gallery_images = @gallery.gallery_images
		@feat_img = @gallery_images.shift
	end

	private 

	def get_galleries
		return Gallery.all unless Gallery.gallery_types.include?(params[:g_type])
		Gallery.where(g_type: params[:g_type])
	end
end
