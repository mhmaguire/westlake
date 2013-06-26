ActiveAdmin.register GalleryImage do
	menu parent: "Content"

	form html: {enctype: 'multipart/form-data'} do |f|
		f.inputs do 
			f.input :image 
		end
		f.actions 
	end
end
