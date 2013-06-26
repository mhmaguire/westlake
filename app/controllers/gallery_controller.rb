class GalleryController < ApplicationController

	def show 
		@gallery_images = get_images
		respond_to do |format|
			format.html
		end
	end

	private 
		def get_images
			if params[:gallery_type] == 'integrations'
				puts 'integrations \n \n'
				return GalleryImage.integrations
			if params[:gallery_type] == 'designs'
				puts 'designs \n'
				return GalleryImage.designs
			end
			return GalleryImage.all 
			end 
		end
end
