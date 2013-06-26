class GalleryController < ApplicationController

	def show 
		@gallery_images = get_images
		respond_to do |format|
			format.html
		end
	end

	private 
		def get_images
			if params[:gallery_type] == 'all'
				GalleryImage.all
			else 
				GalleryImage.where(gallery_type: params[:gallery_type])
			end
		end
end
